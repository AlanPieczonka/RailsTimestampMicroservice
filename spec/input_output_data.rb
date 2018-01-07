TIMESTAMPS = [
  {
    input: "4234234",
    output: {
      natural: "1970-02-19 00:10:34 UTC",
      unix: "4234234",
    }
  },
  {
    input: "1450137600",
    output: {
      unix: "1450137600",
      natural: "2015-12-15 00:00:00 UTC"
    }
  },
  {
    input: "14501374332",
    output: {
      unix: "14501374332",
      natural: "2429-07-12 23:32:12 UTC"
    }
  }
]

DATES = [
  {
    input: "December 15, 2015",
    output: {
      unix: 1450137600,
      natural: "December 15, 2015"
    }
  },
  {
    input: "August 25, 2000",
    output: {
      unix: 967158000,
      natural: "August 25, 2000"
    }
  },
  {
    input: "September 21, 2011", # Dark Souls release date ;)
    output: {
      unix: 1316559600,
      natural: "September 21, 2011"
    }
  }
]

INVALID_INPUTS = [
  {
    input: "sdfgijsdfklgsdfg",
    output: {
      unix: nil,
      natural: nil
    }
  },
  {
    input: "Aug4234, 342234",
    output: {
        unix: nil,
        natural: nil
    }
  },
  {
    input: "34243-1313-2",
    output: {
      unix: nil,
      natural: nil
    }
  },
  {
    input: "034342kjlakjdf9324",
    output: {
        unix: nil,
        natural: nil
    }
  }
]

VALID_INVALID = [
  {
    input: "adfjglksjdfgsdfg",
    output: false
  },
  {
    input: "1450137600",
    output: true
  }
]

NIL_HASH = {
  unix: nil,
  natural: nil
}