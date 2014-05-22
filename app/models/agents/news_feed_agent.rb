module Agents
  class NewsFeedAgent < Agent

    cannot_be_scheduled!
    cannot_create_events!

    description <<-MD
      The NewsFeedAgent will collect news headlines from links you provide

      Specify the list of news site you want to subscribe to.

      The `message` is sent from `jabber_sender` to `jaber_receiver`. This message
      can contain any keys found in the source's payload, escaped using double curly braces.
      ex: `"News Story: {{title}}: {{url}}"`

      Have a look at the [Wiki](https://github.com/cantino/huginn/wiki/Formatting-Events-using-Liquid) to learn more about liquid templating.
    MD
  end
end
