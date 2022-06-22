using { my } from '../db/schema';

service MyService {
    entity MyEntity as projection on my.MyEntity;
    entity MySecondEntity as projection on my.MySecondEntity;
}
