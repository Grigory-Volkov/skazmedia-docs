import asciidoctor from 'asciidoctor' // (1)

const Asciidoctor = asciidoctor()
const content = 'http://asciidoctor.org[*Asciidoctor*] ' +
  'running on https://opalrb.com[_Opal_] ' +
  'brings AsciiDoc to Node.js!'
const html = Asciidoctor.convert(content) // (2)
console.log(html) // (3)