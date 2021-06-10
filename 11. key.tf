# ssh-keygen을 통해 RSA Key쌍을 생성
# RSA키를 생성한 리눅스 계정의 ~/.ssh 폴더 밑에 id_rsa(개인키,private key) id_rsa.pub(공개키,public key) 생성 됨
# id_rsa.pub 키가 EC2인스턴스의 ~/.ssh/authorized_keys 파일에 복사가 됨
# 접속 방벙은 
# ssh -i ~/.ssh/id_rsa 계정@서버IP 

resource "aws_key_pair" "user30_keyname" {
  key_name   = "user30-key"
  # id_rsa.pub 파일 내용을 줄바꿈 없이 아래에 복사해서 붙여넣으면 됨
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCbZjM3IU6KbzMVQsz1b04aWCGxONyoqkUiMrxt8VUG9by7RkNo17vanfwoumKC0stOrTGNJanWiel32aL1gQJ9oh/VqISJRpEjdOPx85eolo9Fud7fbrtAkEu7xYBN07fvqkbulnFLn7rtM5JWrHqkA6g0audvzKkBv39M3bZAywBFmddjQluqrsahx6yktotx95BxMMurBA4tiTBt1e/uj2SKj6Ku/eAXHLv9hWO2ovwt1mxNqeEhYZ2wSTgNQuRHqUYdD3t/aPROwQIL6i9GEko13Y5nMz58xjmujNgiWTnQDfE2/tX3BVspb5f+2lGYoBfI88NsHKmQ5YGRwK+7 ec2-user@ip-172-31-26-177.ap-northeast-2.compute.internal"
}
