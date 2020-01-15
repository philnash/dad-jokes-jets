# Dad jokes over SMS using Ruby, Jets and AWS Lambda

This example application combines the [icanhazdadjoke API](https://icanhazdadjoke.com/api) and [Twilio SMS](https://www.twilio.com/sms/api) using the [Jets framework](http://rubyonjets.com/) and [AWS Lambda](https://aws.amazon.com/lambda/).

You can read about how it was built in the blog post [Serverless Ruby on AWS Lambda with the Jets framework](https://www.twilio.com/blog/serverless-ruby-on-aws-lambda-with-the-jets-framework)

## Running the application locally

To run the application locally, follow these steps:

1. Clone the repo and change into the directory

   ```bash
   git clone https://github.com/philnash/dad-jokes-jets.git
   cd dad-jokes-jets
   ```

2. Install the dependencies with bundler

   ```bash
   bundle install
   ```

3. Run the application with jets

   ```bash
   bundle exec jets serve
   ```

You can then make `POST` requests to the `/messages` endpoint. For example:

```bash
curl --data "" http://localhost:8888/messages
<?xml version="1.0" encoding="UTF-8"?>
<Response>
<Message>What’s the advantage of living in Switzerland? Well, the flag is a big plus.</Message>
</Response>
```

Check out the [Jets documentation for more details on building with Jets](http://rubyonjets.com/docs/).