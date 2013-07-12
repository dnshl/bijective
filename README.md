# bijective [![Build Status](https://travis-ci.org/dnshl/bijective.png)](https://travis-ci.org/dnshl/bijective)

## Install
	gem install bijective

## Usage
- Require the gem
- Generate a new sequence
- Create a new instance with generated sequence
- Encode or decode

```
irb(main):001:0> require 'bijective'
=> true

irb(main):002:0> sequence = Bijective::Generator.generate_sequence
=> "10mQU8Hc64YhgbItfkKvX37NzlZrVweRx5OJBPqni2dLuDEpsFoMjyATS9aGWC"

irb(main):003:0> bijective = Bijective::Instance.new(sequence)
=> #<Bijective::Instance:0x007fe931a80800 @sequence="10mQU8Hc64YhgbItfkKvX37NzlZrVweRx5OJBPqni2dLuDEpsFoMjyATS9aGWC", @base=62>

irb(main):004:0> bijective.encode(91939)
=> "NST"

irb(main):005:0> bijective.decode('NST')
=> 91939
```

## License
See License file.
