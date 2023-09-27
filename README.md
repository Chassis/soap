# Soap extension for Chassis

Install [Soap](https://www.php.net/manual/en/book.soap.php) within your [Chassis](http://chassis.io/) box!

## Activation

### Automated Installation

To add the SOAP extension to a Chassis box, include `soap` in the `extensions` list within your `config.local.yaml` file:

```yml
extensions:
    - soap
```

Then run `vagrant provision` to instruct Chassis to download and install the new extension.

### Manual Installation

Ensure you have a Chassis instance set up locally already.

```
# In your Chassis dir:
cd extensions

# Grab the extension
git clone --recursive https://github.com/chassis/soap.git soap

# Reprovision
cd ..
vagrant provision
```

You're now ready to use Soap within your Chassis virtual machine!
