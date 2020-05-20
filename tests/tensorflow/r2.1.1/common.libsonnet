# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

local common = import "../common.libsonnet";
local mixins = import "templates/mixins.libsonnet";

{
  ModelGardenTest:: common.ModelGardenTest {
    frameworkPrefix: "tf-r2.1.1",
    tpuSettings+: {
      softwareVersion: "2.1.1",
    },
    imageTag: "r2.1.1",
  },
  Functional:: mixins.Functional {
    # Run at 20:00 PST daily
    schedule: "0 3 * * 0-6"
  },
}