# Picker

picker.md



No need to manually handle the SelectedIndex. You can use the Pickers SelectedItem property. 
Just make sure your types are the same. For example, if your ItemsSource is bound to a 
property:

    BookTitles List<string> { get; set; }

your SelectedItem has to be something like:

    SelectedBookTitle string { get; set; }

    <Picker 
        ItemsSource="{Binding BookTitles}" 
        SelectedItem="{Binding SelectedBookTitle, Mode=TwoWay}"
        >
    </Picker>


dd this feature relatively easy, even with older versions of Forms pre 2.3.4 which supports it 
out of the box. Just create a custom behaviour to bind the picker items. You can implement your own version or use an existing library, like the Xamarin University Infrastructure Library which is available as source and as a Nuget

The detailed documentation shows how to use it:

<Picker ...>
   <Picker.Behaviors>
      <inf:PickerBindBehavior Items="{Binding Colors}" 
                          SelectedItem="{Binding FavoriteColor}" />
   </Picker.Behaviors>
</Picker>

