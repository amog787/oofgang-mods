.class public Lcom/android/settings/localepicker/OPLocalePickerBase;
.super Landroidx/fragment/app/ListFragment;
.source "OPLocalePickerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;,
        Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleSelectionListener;
    }
.end annotation


# static fields
.field private static mChinaDefaultLocale:[Ljava/lang/String;

.field private static mChinaDefaultLocaleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mListener:Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleSelectionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "en-US"

    const-string/jumbo v1, "zh-CN"

    const-string/jumbo v2, "zh-TW"

    .line 57
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/localepicker/OPLocalePickerBase;->mChinaDefaultLocale:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 58
    sput-object v0, Lcom/android/settings/localepicker/OPLocalePickerBase;->mChinaDefaultLocaleList:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/settings/localepicker/OPLocalePickerBase;->mChinaDefaultLocale:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/settings/localepicker/OPLocalePickerBase;->mChinaDefaultLocaleList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    return-void
.end method

.method public static constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter<",
            "Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 199
    sget v0, Lcom/android/settings/R$layout;->op_locale_picker_item:I

    sget v1, Lcom/android/settings/R$id;->locale:I

    invoke-static {p0, v0, v1}, Lcom/android/settings/localepicker/OPLocalePickerBase;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter<",
            "Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 206
    :goto_0
    invoke-static {p0, v0}, Lcom/android/settings/localepicker/OPLocalePickerBase;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v11

    const-string v0, "layout_inflater"

    .line 209
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/LayoutInflater;

    .line 210
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v12

    .line 211
    new-instance v0, Lcom/android/settings/localepicker/OPLocalePickerBase$1;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-object v7, v11

    move v9, p1

    move v10, p2

    invoke-direct/range {v3 .. v12}, Lcom/android/settings/localepicker/OPLocalePickerBase$1;-><init>(Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;IILjava/util/List;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 114
    invoke-static {}, Lcom/android/settings/localepicker/OPLocalePickerBase;->getSystemAssetLocales()[Ljava/lang/String;

    move-result-object v0

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 118
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const v0, 0x10700a6

    .line 121
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const v2, 0x10700a7

    .line 122
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    .line 124
    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    array-length v3, v0

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 126
    array-length v3, p0

    add-int/2addr v3, v2

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 127
    array-length v3, v0

    sub-int/2addr v3, v2

    const-string v5, "en_US"

    aput-object v5, v0, v3

    .line 128
    array-length v3, p0

    sub-int/2addr v3, v2

    const-string v5, "English (United States)"

    aput-object v5, p0, v3

    .line 131
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0x5f

    const/16 v7, 0x2d

    .line 133
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 134
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "und"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 135
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 139
    invoke-static {v6}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    new-array v7, v2, [I

    aput v4, v7, v4

    .line 144
    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v6}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/android/settings/localepicker/OPLocalePickerBase;->mChinaDefaultLocaleList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    .line 148
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    new-array v5, v2, [I

    aput v4, v5, v4

    .line 153
    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 154
    new-instance v5, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;

    invoke-static {v6, v0, p0}, Lcom/android/settings/localepicker/OPLocalePickerBase;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/localepicker/OPLocalePickerBase;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v6}, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_5
    new-instance v5, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;

    invoke-virtual {v6, v6}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/localepicker/OPLocalePickerBase;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v6}, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 165
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;

    .line 166
    iget-object v7, v5, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v5, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;->locale:Ljava/util/Locale;

    .line 167
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "zz"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 172
    iget-object v7, v5, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-static {v7, v0, p0}, Lcom/android/settings/localepicker/OPLocalePickerBase;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/localepicker/OPLocalePickerBase;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;->label:Ljava/lang/String;

    .line 178
    new-instance v5, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;

    .line 179
    invoke-static {v6, v0, p0}, Lcom/android/settings/localepicker/OPLocalePickerBase;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 178
    invoke-static {v7}, Lcom/android/settings/localepicker/OPLocalePickerBase;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v6}, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 181
    :cond_7
    invoke-virtual {v6, v6}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/localepicker/OPLocalePickerBase;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 185
    new-instance v7, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;

    invoke-direct {v7, v5, v6}, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 190
    :cond_8
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v3
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 248
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 250
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 251
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    aget-object p0, p2, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemAssetLocales()[Ljava/lang/String;
    .locals 1

    .line 104
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    .line 239
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 3

    .line 300
    new-instance v0, Landroid/os/LocaleList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Locale;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-static {v0}, Lcom/android/settings/localepicker/OPLocalePickerBase;->updateLocales(Landroid/os/LocaleList;)V

    return-void
.end method

.method public static updateLocales(Landroid/os/LocaleList;)V
    .locals 2

    .line 311
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 312
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 314
    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    const/4 p0, 0x1

    .line 315
    iput-boolean p0, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 317
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    const-string p0, "com.android.providers.settings"

    .line 319
    invoke-static {p0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 261
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 262
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->replaceListViewForListFragment(Landroidx/fragment/app/ListFragment;)V

    .line 263
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/localepicker/OPLocalePickerBase;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    .line 264
    invoke-virtual {p0, p1}, Landroidx/fragment/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 265
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 286
    iget-object p1, p0, Lcom/android/settings/localepicker/OPLocalePickerBase;->mListener:Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleSelectionListener;

    if-eqz p1, :cond_0

    .line 287
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;

    iget-object p1, p1, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;->locale:Ljava/util/Locale;

    .line 288
    iget-object p0, p0, Lcom/android/settings/localepicker/OPLocalePickerBase;->mListener:Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleSelectionListener;

    invoke-interface {p0, p1}, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 274
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 275
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ListView;->requestFocus()Z

    return-void
.end method

.method public setLocaleSelectionListener(Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleSelectionListener;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/android/settings/localepicker/OPLocalePickerBase;->mListener:Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleSelectionListener;

    return-void
.end method
