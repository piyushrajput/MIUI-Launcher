.class public Lcom/android/launcher2/LauncherPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "LauncherPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static ENABLE_SET_TRANSFORMATION:Z


# instance fields
.field private mIconShadow:Landroid/preference/Preference;

.field private mKeepInMemoryPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/LauncherPreferenceActivity;->ENABLE_SET_TRANSFORMATION:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v2, 0x7f050001

    invoke-virtual {p0, v2}, Lcom/android/launcher2/LauncherPreferenceActivity;->addPreferencesFromResource(I)V

    .line 42
    const-string v2, "pref_key_keep_in_memory"

    invoke-virtual {p0, v2}, Lcom/android/launcher2/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->mKeepInMemoryPref:Landroid/preference/CheckBoxPreference;

    .line 43
    iget-object v2, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->mKeepInMemoryPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 44
    const-string v2, "pref_key_icon_shadow"

    invoke-virtual {p0, v2}, Lcom/android/launcher2/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->mIconShadow:Landroid/preference/Preference;

    .line 45
    iget-object v2, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->mIconShadow:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 46
    sget-boolean v2, Landroid/os/Build;->IS_LOW_MEMORY_DEVICE:Z

    if-eqz v2, :cond_0

    .line 47
    const-string v2, "pref_key_checkboxes"

    invoke-virtual {p0, v2}, Lcom/android/launcher2/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 48
    .local v0, boxes:Landroid/preference/PreferenceGroup;
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 49
    .local v1, prefDrawingCache:Landroid/preference/Preference;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 50
    const-string v2, "pref_key_enable_drawing_cache"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 51
    const v2, 0x7f0a003c

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 52
    const v2, 0x7f0a003d

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 55
    .end local v0           #boxes:Landroid/preference/PreferenceGroup;
    .end local v1           #prefDrawingCache:Landroid/preference/Preference;
    :cond_0
    const-string v2, "pref_key_render_in_truecolor"

    invoke-virtual {p0, v2}, Lcom/android/launcher2/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    sget-boolean v3, Landroid/os/Build;->IS_OLD_DEVICE:Z

    if-nez v3, :cond_2

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 56
    sget-boolean v2, Lcom/android/launcher2/LauncherPreferenceActivity;->ENABLE_SET_TRANSFORMATION:Z

    if-eqz v2, :cond_1

    .line 57
    const v2, 0x7f050002

    invoke-virtual {p0, v2}, Lcom/android/launcher2/LauncherPreferenceActivity;->addPreferencesFromResource(I)V

    .line 59
    :cond_1
    return-void

    .line 55
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 71
    iget-object v1, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->mKeepInMemoryPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_2

    .line 72
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keep_launcher_in_memory"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    :cond_0
    :goto_1
    return v5

    :cond_1
    move v3, v4

    .line 72
    goto :goto_0

    .line 74
    .restart local p2
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->mIconShadow:Landroid/preference/Preference;

    if-ne p1, v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherPreferenceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 76
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/android/launcher2/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 63
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 64
    iget-object v0, p0, Lcom/android/launcher2/LauncherPreferenceActivity;->mKeepInMemoryPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keep_launcher_in_memory"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 67
    return-void

    .line 64
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
