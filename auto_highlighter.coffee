pattern = ///
  \b(
    females?|
    lad(y|ies)|
    girls?|
    wom[ea]n|
    cats?|
    kitt(ens?|y|ies)|
    immediately|
    now|
    420|
    vega(taria)?ns?|
    lease|
    sublet|
    december|
    january|
    february|
    bart|
    muni|
    laundry|
    washers?|
    dryers?|
    efficiency|
    ((early|mid|late)[ -])?(twentie|thirtie|fortie|fiftie|20|30|40|50)'?s|
    (un-?)?furnished|
    \$[0-9]+|\d+\s*(be?d|ba(th)?)(room)?s?
  )\b|
  \d+
///ig
container = document.querySelector('section.userbody, section.body')

findAndReplaceDOMText pattern, container, (text, idx) ->
  el = document.createElement 'span'
  el.innerText = text
  el.style.backgroundColor = 'yellow'
  el


