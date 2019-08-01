# fortune-service application
Returns fortunes in random sequence

### Option 1: Script for quick & easy direct deployment to Cloud Foundry:

https://github.com/ciberkleid/cna-demo-setup

### Option 2: Pipeline-based deployment using Concourse or Jenkins and Spring Cloud Pipelines:

https://github.com/spring-cloud/spring-cloud-pipelines#step-by-step-cloud-foundry-migration

### Create container image
Go to https://buildpacks.io/

Download and install CN buildpacks https://buildpacks.io/docs/install-pack/

Comment out the maven spring-cloud-contract-maven-plugin
```
<!--<plugin>-->
   <!--<groupId>org.springframework.cloud</groupId>-->
   <!--<artifactId>spring-cloud-contract-maven-plugin</artifactId>-->
   <!--<version>${spring-cloud-contract.version}</version>-->
   <!--<extensions>true</extensions>-->
   <!--<configuration>-->
	 <!--<baseClassForTests>io.pivotal.fortune.BaseClass</baseClassForTests>-->
	 <!--<basePackageForTests>io.pivotal.fortune.contracttests</basePackageForTests>-->
   <!--</configuration>-->
<!--</plugin>-->
```

Set pack default builder

```pack set-default-builder cloudfoundry/cnb:cflinuxfs3```

Run pack command from working directory of your project

```pack build fortune-service-k8s```


