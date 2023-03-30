management_groups = {

    root = {
      name = "opusroot"
      displayName = "Opus-Root"
    }
    gov = {
      name = "gov",
      displayName = "Governance"
      parent_key = "root"
    }
    mgt = {
      name = "mgt"
      displayName = "Management"
      parent_key = "root"
    }
    globalnet = {
      name = "globalnet"
      displayName = "GlobalNet"
      parent_key = "root"
    }
    sec = {
      name = "sec"
      displayName = "Security"
      parent_key = "root"
    }
    vdc = {
      name = "opus",
      displayName = "Opus"
      parent_key = "mgt"
    }
    region1 = {
      name = "we1"
      displayName = "WE1"
      parent_key = "vdc"
    }
    region1spokes = {
      name = "we1spokes"
      displayName = "WE1 Spokes"
      parent_key = "region1"
    }
    region1spokesprod = {
      name = "we1productionspokes"
      displayName = "WE1 Production Spokes"
      parent_key = "region1spokes"
    }
    region1spokesnonprod = {
      name = "we1nonproductionspokes"
      displayName = "WE1 Non Production Spokes"
      parent_key = "region1spokes"
    }
    edc = {
      name = "edc"
      displayName = "EDC"
      parent_key = "root"
    }
  
}