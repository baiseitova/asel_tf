terraform {
  backend "s3" {
    bucket= "bucket-tf-asel"
    key= "bucket3.tfstate" 
    region= "us-east-1"
     }
}