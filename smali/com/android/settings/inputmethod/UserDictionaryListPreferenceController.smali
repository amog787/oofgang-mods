.class public Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "UserDictionaryListPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;


# static fields
.field public static final USER_DICTIONARY_SETTINGS_INTENT_ACTION:Ljava/lang/String; = "android.settings.USER_DICTIONARY_SETTINGS"


# instance fields
.field private final KEY_ALL_LANGUAGE:Ljava/lang/String;

.field private mLocale:Ljava/lang/String;

.field private mScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "all_languages"

    .line 48
    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->KEY_ALL_LANGUAGE:Ljava/lang/String;

    return-void
.end method

.method private createUserDictSettings()V
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->getUserDictLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 147
    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->mLocale:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 150
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    const-string v2, ""

    .line 155
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_1
    if-lez v1, :cond_5

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_5

    .line 161
    iget-object v3, p0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "all_languages"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 165
    :cond_2
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 166
    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 169
    :cond_3
    iget-object v4, p0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 173
    :cond_5
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v1, :cond_6

    .line 174
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->createUserDictionaryPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    .line 176
    :cond_6
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    invoke-direct {p0, v1}, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->createUserDictionaryPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v1

    .line 178
    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_7

    .line 179
    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_8
    :goto_3
    return-void
.end method

.method private createUserDictionaryPreference(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 3

    .line 193
    new-instance v0, Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 194
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.USER_DICTIONARY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 196
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 197
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    goto :goto_1

    .line 199
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->user_dict_settings_all_languages:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string p0, "all_languages"

    .line 201
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 202
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_0

    .line 204
    :cond_1
    invoke-static {p1}, Lcom/android/settings/Utils;->createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    :goto_0
    const-string p0, "locale"

    .line 207
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    invoke-virtual {v0}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 211
    const-class p0, Lcom/android/settings/inputmethod/UserDictionarySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "locale"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    if-nez v0, :cond_0

    return-object v1

    .line 90
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 91
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 93
    :cond_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, ""

    .line 94
    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 98
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string v0, "input_method"

    .line 109
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 110
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v3, 0x1

    .line 113
    invoke-virtual {p0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v2

    .line 115
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 116
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 118
    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 127
    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 128
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v1

    :catchall_0
    move-exception p0

    .line 98
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 99
    throw p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 71
    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method getUserDictLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    invoke-static {p1}, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->createUserDictSettings()V

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->mLocale:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
