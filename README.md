# RedisInDocker

Script for installing docker and running a redis-container.

Run on a Suse or Debian server.

## To run

```()
chmod +x runMe.sh;
./runMe.sh;
```

### To run tests

You need to [install vagrant](https://github.com/Bragalund/bjellekua/blob/dev/installVagrantWithAptOnUbuntu18.04.sh).

To create VM and run main.yml in root folder:
```()
vagrant up;
```

To remove VM:
```()
vagrant destroy -f;
```