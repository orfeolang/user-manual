Prism.languages.orfeo={
  "datum-quoted":{pattern:/(^|[(^\s])"[^"]*"(?=[).\s]|$)/,alias:"string",lookbehind:!0},
  "datum-unquoted":{pattern:/(^|[(^\s])[.\w/\[\]♮♭♯-]*[\w/\[\]♮♭♯-](?=[).\s]|$)/,alias:"string",lookbehind:!0},
  duration:{pattern:/(^|[(\s]):(?:=|(?:\.\d+|(?:0|[1-9]\d*)(?:\.\d*)?)(?:\/(?:0?\.0*[1-9]\d*|[1-9]\d*(?:\.\d*)?))?)(?=[)\s]|$)/,alias:"number",lookbehind:!0},
  "parenthesis-open":{pattern:/(^|[(^\s])\((?=[^.]|$)/,alias:"punctuation",lookbehind:!0},
  "parenthesis-close":{pattern:/(^|[^^])\)(?=[).\s]|$)/,alias:"punctuation",lookbehind:!0},
  "rhythm-flags":{pattern:/(^|[(\s])\^+(?=\(|"[^"]*"|[.\w/\[\]♮♭♯-]*[\w/\[\]♮♭♯-]|$)/,alias:"operator",lookbehind:!0},
  "rhythm-dots":{pattern:/(^|[)"\w/\[\]♮♭♯-])\.+(?=[)\s]|$)/,alias:"operator",lookbehind:!0}
};

Prism.languages.dataline={
  point:{pattern:/(^\s*)(?:\.\d+|(?:0|[1-9]\d*)(?:\.\d*)?)(?=\s|$)/m,alias:"number",lookbehind:!0}
};
