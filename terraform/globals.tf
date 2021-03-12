# Global variables which will be used in multiple modules

variable "aws_profile" {
  description = "The Aws profile to use"
}

variable "aws_region" {
  description = "The Aws region to use"
  default     = "us-west-2"
}

variable "aws_short_region" {
  description = "The short name for an AWS region"
  default = {
    us-west-2 = "usw2"
    eu-west-1 = "euw1"
    us-east-1 = "use1"
  }
}

variable "short_az" {
  description = "The short az name from availability_zone or availability_zone_id"
  default = {
    us-west-2a = "usw2a"
    us-west-2b = "usw2b"
    us-west-2c = "usw2c"
    us-west-2d = "usw2d"
    eu-west-1a = "euw1a"
    eu-west-1b = "euw1b"
    eu-west-1c = "euw1c"
    usw2-az1   = "usw2a",
    usw2-az2   = "usw2b",
    usw2-az3   = "usw2c",
    usw2-az4   = "usw2d",
    euw1-az1   = "euw1a",
    euw1-az2   = "euw1b",
    euw1-az3   = "euw1c"
  }
}

# Single letter map
# NOTE: This only supports counts <= 26
variable "letters" {
  description = "Number to letter map"
  # In vim, this can be generated with :read !ruby -r json -e 'puts ("a" .. "z").to_a.to_json'
  default = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
}

# Double letter map, for starting with "aa". This supports many more instances
variable "letters2" {
  description = "Number to letter map"
  # In vim, this can be generated with :read !ruby -r json -e 'puts ("aa" .. "cz").to_a.to_json'
  default = ["aa", "ab", "ac", "ad", "ae", "af", "ag", "ah", "ai", "aj", "ak", "al", "am", "an", "ao", "ap", "aq", "ar", "as", "at", "au",
    "av", "aw", "ax", "ay", "az", "ba", "bb", "bc", "bd", "be", "bf", "bg", "bh", "bi", "bj", "bk", "bl", "bm", "bn", "bo", "bp",
    "bq", "br", "bs", "bt", "bu", "bv", "bw", "bx", "by", "bz", "ca", "cb", "cc", "cd", "ce", "cf", "cg", "ch", "ci", "cj", "ck",
  "cl", "cm", "cn", "co", "cp", "cq", "cr", "cs", "ct", "cu", "cv", "cw", "cx", "cy", "cz"]

}

variable "aws_dns_region" {
  description = "The region where dns zones live"
  default     = "us-west-2"
}

variable "aws_dns_profile" {
  description = "The aws profile for dns records"
  default     = "msysmc"
}

variable "production" {
  description = "Is this prod?"
  default     = false
}

variable "production_dns_suffix" {
  description = "The dns suffix for production hosts"
  default     = "prd.sparkpost"
}
