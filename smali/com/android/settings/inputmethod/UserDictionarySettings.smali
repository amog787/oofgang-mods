.class public Lcom/android/settings/inputmethod/UserDictionarySettings;
.super Landroidx/fragment/app/ListFragment;
.source "UserDictionarySettings.java"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/Instrumentable;
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/ListFragment;",
        "Lcom/android/settingslib/core/instrumentation/Instrumentable;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mLocale:Ljava/lang/String;

.field private mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    return-void
.end method

.method private createAdapter()Landroid/widget/ListAdapter;
    .locals 7

    .line 155
    new-instance v6, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->user_dictionary_item:I

    iget-object v3, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string/jumbo p0, "word"

    const-string v0, "shortcut"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 p0, 0x2

    new-array v5, p0, [I

    fill-array-data v5, :array_0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v6

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method

.method public static deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 4

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 241
    sget-object p1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    new-array v0, v1, [Ljava/lang/String;

    aput-object p0, v0, v2

    const-string/jumbo p0, "word=? AND shortcut is null OR shortcut=\'\'"

    invoke-virtual {p2, p1, p0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :cond_0
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    const-string/jumbo p0, "word=? AND shortcut=?"

    invoke-virtual {p2, v0, p0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getShortcut(I)Ljava/lang/String;
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 230
    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 232
    iget-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    .line 234
    :cond_1
    iget-object p0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string p1, "shortcut"

    .line 235
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 234
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getWord(I)Ljava/lang/String;
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 220
    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 222
    iget-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    .line 224
    :cond_1
    iget-object p0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string/jumbo p1, "word"

    .line 225
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 224
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 201
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "mode"

    .line 202
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "word"

    .line 205
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "shortcut"

    .line 206
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mLocale:Ljava/lang/String;

    const-string p2, "locale"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p2, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;

    .line 210
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    .line 211
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    sget p2, Lcom/android/settings/R$string;->user_dict_settings_add_dialog_title:I

    .line 212
    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 214
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x202

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 78
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    new-instance p1, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getMetricsCategory()I

    move-result v0

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;-><init>(ILcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "locale"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    move-object p1, v0

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, v1

    .line 100
    :goto_2
    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mLocale:Ljava/lang/String;

    const/4 p1, 0x1

    .line 102
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 253
    new-instance p1, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mLocale:Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 172
    sget p0, Lcom/android/settings/R$string;->user_dict_settings_add_menu_title:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 173
    invoke-interface {p1, p2, v0, p2, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    sget p1, Lcom/android/settings/R$drawable;->op_ic_add_more:I

    .line 174
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p0

    const/4 p1, 0x5

    .line 175
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p3}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 112
    sget v0, Lcom/android/settings/R$string;->user_dict_settings_title:I

    invoke-virtual {p3, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mLocale:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/inputmethod/UserDictionarySettingsUtils;->getLocaleDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {p3, v0}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p3, Lcom/android/settings/R$string;->user_dict_settings_title:I

    invoke-virtual {p0, p3}, Landroid/app/Activity;->setTitle(I)V

    const p0, 0x10900d9

    const/4 p3, 0x0

    .line 118
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 163
    invoke-direct {p0, p3}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getWord(I)Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-direct {p0, p3}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getShortcut(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 258
    iput-object p2, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    .line 259
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->createAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/inputmethod/UserDictionarySettings;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 181
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 182
    invoke-direct {p0, p1, p1}, Lcom/android/settings/inputmethod/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 0

    .line 190
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 191
    iget-object p0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {p0}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 149
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 150
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->onResume()V

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 124
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const p2, 0x1020004

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 126
    sget p2, Lcom/android/settings/R$string;->user_dict_settings_empty_text:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 128
    new-instance p2, Lcom/google/android/material/emptyview/EmptyPageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/material/emptyview/EmptyPageView;-><init>(Landroid/content/Context;)V

    .line 129
    invoke-virtual {p2}, Lcom/google/android/material/emptyview/EmptyPageView;->getEmptyImageView()Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->op_empty:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    sget v0, Lcom/android/settings/R$string;->user_dict_settings_empty_text:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/emptyview/EmptyPageView;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 133
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 136
    :cond_0
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->replaceListViewForListFragment(Landroidx/fragment/app/ListFragment;)V

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 139
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 141
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$dimen;->op_control_margin_space4:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 p2, 0x0

    .line 140
    invoke-virtual {p1, p2, p0, p2, p2}, Landroid/widget/ListView;->setPadding(IIII)V

    return-void
.end method
