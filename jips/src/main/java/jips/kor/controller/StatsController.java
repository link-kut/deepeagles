package jips.kor.controller;

import jips.kor.domain.statistics.NumOfAROS;
import jips.kor.domain.statistics.NumOfAcceptsRejects;
import jips.kor.domain.statistics.NumOfOriginalSubmissions;
import jips.kor.domain.statistics.country.ARCountry;
import jips.kor.domain.statistics.country.AuthorCountries;
import jips.kor.domain.statistics.country.ReviewerCountries;
import jips.kor.domain.statistics.country.RoleTypeCountry;
import jips.kor.repository.StatsMapper;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.oauth2.client.DefaultOAuth2ClientContext;
import org.springframework.security.oauth2.client.OAuth2RestTemplate;
import org.springframework.security.oauth2.client.token.DefaultAccessTokenRequest;
import org.springframework.security.oauth2.client.token.grant.client.ClientCredentialsAccessTokenProvider;
import org.springframework.security.oauth2.client.token.grant.client.ClientCredentialsResourceDetails;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.inject.Inject;
import java.net.URI;
import java.util.*;

@Controller
@RequestMapping("/rest")
public class StatsController {

    @Inject
    private StatsMapper statsMapper;

    @Value("${oauth.accessTokenUriPath}")
    private String accessTokenUriPath;

    @Value("${oauth.client_credentials.clientId}")
    private String clientId;

    @Value("${oauth.client_credentials.secret}")
    private String secret;

    @Value("${oauth.client_credentials.scope}")
    private String scope;

    private ClientCredentialsResourceDetails details;

    private OAuth2AccessToken accessToken;


    //http://localhost:8080/rest/stats/aros?jnid=jips
    @RequestMapping(value = "/stats/aros", method = RequestMethod.GET, produces = "application/json")
    public ResponseEntity<List<NumOfAROS>> arosCount(@RequestParam(value="jnid") String jnid) {
        GregorianCalendar today = new GregorianCalendar ( );
        int year = today.get(today.YEAR);
        int month = today.get ( today.MONTH ) +1;
        //int date = today.get ( today.DAY_OF_MONTH );
        String now = year+"-"+(month-2);
        String next = year+"-"+(month);
        String db= statsMapper.LastMonth();
        System.out.println("now = " +now);
        System.out.println("month = " + month);
        System.out.println("db = " + db);
        System.out.println("next = " + next);

        //System.out.println("db  = " +statsMapper.LastMonth());


        if (db.equals(now)) {
            this.getAccessToken();
            System.out.println("!!  insert !!!");
            OAuth2RestTemplate template = new OAuth2RestTemplate(details, new DefaultOAuth2ClientContext(accessToken));
           // List<NumOfAcceptsRejects> tmp1 = template.getForObject(URI.create("https://www.manuscriptlink.com/rest/stats/acceptAndRejectCounts?jnid=" + jnid), List.class);
            List<NumOfAcceptsRejects> tmp1 = template.exchange("https://www.manuscriptlink.com/rest/stats/acceptAndRejectCounts?jnid=" + jnid,
                    HttpMethod.GET,
                    null,
                    new ParameterizedTypeReference<List<NumOfAcceptsRejects>>() {
                    }).getBody();
           // List<NumOfOriginalSubmissions> tmp2 = template.getForObject(URI.create("https://www.manuscriptlink.com/rest/stats/originalSubmissionsCounts?jnid=" + jnid), List.class);
            List<NumOfOriginalSubmissions> tmp2 = template.exchange("https://www.manuscriptlink.com/rest/stats/originalSubmissionsCounts?jnid=" + jnid,
                    HttpMethod.GET,
                    null,
                    new ParameterizedTypeReference<List<NumOfOriginalSubmissions>>() {
                    }).getBody();
            int size = tmp1.size() -1;
            System.out.println("next = " + next);

            if(tmp1.get(size).getDate().equals(next)) {
                size -= 1;
                System.out.println("size = " + size);
            }

            NumOfAROS numOfAROS = new NumOfAROS();
            System.out.println("!!!!!!!!" + tmp1.get(0).getDate());
            System.out.println("tmp1 = " + ((NumOfAcceptsRejects) tmp1.get(size)).getDate());
            System.out.println("tmp2 = " + tmp2.get(50));
            System.out.println("+ tmp1.get(50) = " + tmp1.get(50));
            //numOfAcceptsRejects.setDate(tmp1.get(tmp1.size()-1).getDate()
            numOfAROS.setDate(tmp1.get(size).getDate());
            numOfAROS.setAccepts(tmp1.get(size).getAccepts());
            numOfAROS.setRejects(tmp1.get(size).getRejects());
            numOfAROS.setOriginalSubmissionConfirmed(tmp2.get(size).getOriginalSubmissionConfirmed());

            statsMapper.insert(numOfAROS);
        }

        List<NumOfAROS> res = statsMapper.findByList();
        //System.out.println("success");
        return new ResponseEntity<>(res, HttpStatus.OK);
    }

    //http://localhost:8080/rest/stats/authorCounties?jnid=jips
    /*
    @RequestMapping(value = "/stats/authorCounties", method = RequestMethod.GET, produces = "application/json")
    public ResponseEntity<AuthorCountries> authorCounties(@RequestParam(value="jnid") String jnid) {
        return new ResponseEntity<>(this.getAuthorCountiesInfo(jnid), HttpStatus.OK);
    }
    */

    public AuthorCountries getAuthorCountiesInfo(String jnid) {
        GregorianCalendar today = new GregorianCalendar ( );
        int date = today.get ( today.DAY_OF_MONTH );
        int count = statsMapper.findByCount(RoleTypeCountry.AUTHOR);
        int total = statsMapper.findByTotal(RoleTypeCountry.AUTHOR);
        String code = statsMapper.findByType(RoleTypeCountry.AUTHOR);

        if (date < 15){
            if(count == 0){
                this.getAccessToken();

                OAuth2RestTemplate template = new OAuth2RestTemplate(details, new DefaultOAuth2ClientContext(accessToken));
                AuthorCountries res = template.getForObject(URI.create("https://www.manuscriptlink.com/rest/stats/authorCounties?jnid=" + jnid), AuthorCountries.class);

                AuthorCountries temp = new AuthorCountries();
                temp.setCountryCodeMapFiltered(res.getCountryCodeMapFiltered());

                ARCountry country = new ARCountry();
                country.setCount(1);
                country.setTotal(res.getTotal());
                country.setCountryCodeMapFiltered(temp.getCountryCodeMapFiltered().toString());
                country.setRoleTypeCountry(RoleTypeCountry.AUTHOR);

                statsMapper.update(country);
            }
        }
        if (date > 15){
            if(count == 1){
                this.getAccessToken();

                OAuth2RestTemplate template = new OAuth2RestTemplate(details, new DefaultOAuth2ClientContext(accessToken));
                AuthorCountries res = template.getForObject(URI.create("https://www.manuscriptlink.com/rest/stats/authorCounties?jnid=" + jnid), AuthorCountries.class);

                AuthorCountries temp = new AuthorCountries();
                temp.setCountryCodeMapFiltered(res.getCountryCodeMapFiltered());

                ARCountry country = new ARCountry();
                country.setCount(0);
                country.setTotal(res.getTotal());
                country.setCountryCodeMapFiltered(temp.getCountryCodeMapFiltered().toString());
                country.setRoleTypeCountry(RoleTypeCountry.AUTHOR);

                statsMapper.update(country);
            }
        }


        HashMap<String, Integer> map = new HashMap<String, Integer>();
        code = code.substring(1,code.length()-1);
        String[] array;
        array= code.split(",");
        for (int i = 0; i < array.length; i++){
            if(array[i].contains("=")){continue;}
            array[i+1] = array[i]+", "+array[i+1];}
        for(int j=0; j<array.length;j++){
            if(array[j].contains("=")){
                String[] tmp;
                tmp=array[j].split("=");
                map.put(tmp[0],Integer.parseInt(tmp[1]));
            }
        }

        AuthorCountries dbData = new AuthorCountries();
        dbData.setTotal(total);
        dbData.setCountryCodeMapFiltered(map);
        return dbData;
    }

    //http://localhost:8080/rest/stats/reviewerCounties?jnid=jips
/*
    @RequestMapping(value = "/stats/reviewerCounties", method = RequestMethod.GET, produces = "application/json")
    public ResponseEntity<ReviewerCountries> reviewerCounties(@RequestParam(value="jnid") String jnid) {
        return new ResponseEntity<>(this.getReviewerCountiesInfo(jnid), HttpStatus.OK);
    }
*/

    public ReviewerCountries getReviewerCountiesInfo(String jnid) {
        GregorianCalendar today = new GregorianCalendar ( );
        int date = today.get ( today.DAY_OF_MONTH );
        int count = statsMapper.findByCount(RoleTypeCountry.REVIEWER);
        int total = statsMapper.findByTotal(RoleTypeCountry.REVIEWER);
        String code = statsMapper.findByType(RoleTypeCountry.REVIEWER);

        if (date < 15){
            if(count == 0 ){
                this.getAccessToken();

                OAuth2RestTemplate template = new OAuth2RestTemplate(details, new DefaultOAuth2ClientContext(accessToken));
                ReviewerCountries res = template.getForObject(URI.create("https://www.manuscriptlink.com/rest/stats/reviewerCounties?jnid=" + jnid), ReviewerCountries.class);


                ReviewerCountries temp = new ReviewerCountries();
                temp.setCountryCodeMapFiltered(res.getCountryCodeMapFiltered());

                ARCountry country = new ARCountry();

                country.setCount(1);
                country.setTotal(res.getTotal());
                country.setCountryCodeMapFiltered(temp.getCountryCodeMapFiltered().toString());
                country.setRoleTypeCountry(RoleTypeCountry.REVIEWER);

                statsMapper.update(country);
            }
        }
        if (date > 15){
            if(count == 1){
                this.getAccessToken();

                OAuth2RestTemplate template = new OAuth2RestTemplate(details, new DefaultOAuth2ClientContext(accessToken));
                ReviewerCountries res = template.getForObject(URI.create("https://www.manuscriptlink.com/rest/stats/reviewerCounties?jnid=" + jnid), ReviewerCountries.class);


                ReviewerCountries temp = new ReviewerCountries();
                temp.setCountryCodeMapFiltered(res.getCountryCodeMapFiltered());

                ARCountry country = new ARCountry();

                country.setCount(0);
                country.setTotal(res.getTotal());
                country.setCountryCodeMapFiltered(temp.getCountryCodeMapFiltered().toString());
                country.setRoleTypeCountry(RoleTypeCountry.REVIEWER);

                statsMapper.update(country);
            }
        }


        HashMap<String, Integer> map = new HashMap<String, Integer>();
        code = code.substring(1,code.length()-1);
        String[] array;
        array= code.split(",");
        for (int i = 0; i < array.length; i++){
            if(array[i].contains("=")){continue;}
            array[i+1] = array[i]+", "+array[i+1];}
        for(int j=0; j<array.length;j++){
            if(array[j].contains("=")){
                String[] tmp;
                tmp=array[j].split("=");
                map.put(tmp[0],Integer.parseInt(tmp[1]));
            }
        }

        ReviewerCountries dbData = new ReviewerCountries();
        dbData.setTotal(total);
        dbData.setCountryCodeMapFiltered(map);
        return dbData;
    }

    public void getAccessToken() {
        details = new ClientCredentialsResourceDetails();
        details.setClientId(clientId);
        details.setClientSecret(secret);
        details.setAccessTokenUri("https://www.manuscriptlink.com" + accessTokenUriPath);
        details.setScope(Arrays.asList(scope));

        ClientCredentialsAccessTokenProvider provider = new ClientCredentialsAccessTokenProvider();
        accessToken = provider.obtainAccessToken(details, new DefaultAccessTokenRequest());
        System.out.println("Access Token: " + accessToken.getValue());
    }
}
