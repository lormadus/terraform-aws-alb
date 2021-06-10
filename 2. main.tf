# Provider 를 지정하고 terraform init를 실행하면 현재 작업 디렉토리 아래 .terraform/ 디렉토리에
# AWS Plug-in 다운로드 됨
provider "aws" {  
	region     = "ap-southeast-1"  
}
