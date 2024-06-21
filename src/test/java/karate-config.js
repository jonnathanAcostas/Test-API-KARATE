function fn() {
    var env = karate.env; // get system property 'karate.env'
    karate.log('karate.env system property was:', env);
    if (!env) {
        env = 'dev';
    }

    var signUp = 'https://api.demoblaze.com/signup';
    var login = 'https://api.demoblaze.com/login';

    var config = {
        env: env,
        myVarName: 'someValue'
    }

    if (env == 'dev') {
        // customize
    } else if (env == 'e2e') {
        // customize
    }

    return config;
}
