<div class="col-lg-4">
                                <div class="form-group"><label
                                        class="form-label"
                                        for="countryId">Country</label>
                                    <div class="form-control-wrap">
                                        <select class="form-control" id="countryId"
                                            name="country" onchange="formUp('countryId')"
                                            required="" data-msg="Select Country">
                                            <option value="">Select Country</option>
                                        </select>
                                        </div>
                                </div>
                            </div>
   <div class="col-lg-4">
                                <div class="form-group"><label
                                        class="form-label"
                                        for="stateId">State</label>
                                        <script src="/myaccount/personal-banking/countries.js"></script>
                                    <div class="form-control-wrap">
                                        <select class="form-control" id="stateId"
                                            name="state" onchange="formUp('stateId')"
                                            required="" data-msg="Select State">
                                            <option value="">Select State</option>
                                        </select>
                                        </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group"><label
                                        class="form-label"
                                        for="cityId">City</label>
                                    <div class="form-control-wrap">
                                        <input class="cities form-control"  id="cityId"
                                            name="city"
                                            required="" data-msg="Enter City">
                                            <script language="javascript">
                                        populateCountries("countryId", "stateId");
                                        populateCountries("country1");
                                        populateCountries("country1");
                                    </script>
                                        </div>
                                </div>
                            </div>
                            <br></br>