# bastion-on-fargate

## 前提
* [AWS Systems Manager のアクティベーション](https://ap-northeast-1.console.aws.amazon.com/systems-manager/activations?region=ap-northeast-1)でID、CODEの発行が終わっていること
* ID、CODEはパラメーターストアに登録されていること
* BastionOnFargateRoleにはecsTaskExecutionRoleにパラメーターストアへのアクセス権限を付与

## docker build
```
% docker build --force-rm=true --compress=true -t bastion-on-fargate:latest .
```

## run
```
% ecs-cli compose --project-name bastion -f docker-compose.yml -f docker-compose-dev.yml --ecs-params ecs-params.yml --cluster bastion-on-fargate run
```
