package jips.kor;

import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.transfer.TransferManager;
import org.springframework.cloud.aws.context.config.annotation.EnableContextCredentials;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@EnableContextCredentials(accessKey = "${cloud.aws.credentials.accessKey}", secretKey = "${cloud.aws.credentials.secretKey}")
public class AWSConfiguration {
    @Bean
    public TransferManager transferManager(AWSCredentialsProvider awsCredentialsProvider) {
        TransferManager tx = new TransferManager(awsCredentialsProvider);
        return tx;
    }

    @Bean
    public AmazonS3 amazonS3(AWSCredentialsProvider awsCredentialsProvider) {
        AmazonS3 amazonS3 = new AmazonS3Client(awsCredentialsProvider);
        return amazonS3;
    }
}