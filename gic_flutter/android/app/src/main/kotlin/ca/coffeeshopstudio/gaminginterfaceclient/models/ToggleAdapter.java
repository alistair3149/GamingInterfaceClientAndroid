package ca.coffeeshopstudio.gaminginterfaceclient.models;

import android.content.Context;

/**
 * Copyright [2019] [Terence Doerksen]
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * <p>
 * http://www.apache.org/licenses/LICENSE-2.0
 * <p>
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
public class ToggleAdapter extends AbstractAdapter {
    private int[] builtIn = ControlTypes.Toggles;

    public ToggleAdapter(Context context) {
        super(context);
        setImagePrefix("switch");
    }

    @Override
    public int[] getBuiltInResources() {
        return builtIn;
    }
}