.class public Lcom/android/settings/localepicker/LocaleListEditor;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "LocaleListEditor.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

.field private mAddLanguage:Landroid/view/View;

.field private mIsUiRestricted:Z

.field private mMenu:Landroid/view/Menu;

.field private mRemoveMode:Z

.field private mShowingRemoveDialog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 330
    new-instance v0, Lcom/android/settings/localepicker/LocaleListEditor$7;

    invoke-direct {v0}, Lcom/android/settings/localepicker/LocaleListEditor$7;-><init>()V

    sput-object v0, Lcom/android/settings/localepicker/LocaleListEditor;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_locale"

    .line 76
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/localepicker/LocaleListEditor;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/localepicker/LocaleListEditor;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/localepicker/LocaleListEditor;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    return-void
.end method

.method private configureDragAndDrop(Landroid/view/View;)V
    .locals 4

    .line 291
    sget v0, Lcom/android/settings/R$id;->dragList:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 292
    new-instance v1, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-direct {v1, v2, v3}, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;-><init>(Landroid/content/Context;Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V

    const/4 v2, 0x1

    .line 293
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setAutoMeasureEnabled(Z)V

    .line 294
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 296
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 297
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 298
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 300
    sget v0, Lcom/android/settings/R$id;->add_language:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAddLanguage:Landroid/view/View;

    .line 301
    new-instance v0, Lcom/android/settings/localepicker/LocaleListEditor$6;

    invoke-direct {v0, p0}, Lcom/android/settings/localepicker/LocaleListEditor$6;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getUserLocaleList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 281
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    .line 283
    :goto_0
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 284
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 285
    invoke-static {v2}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private setRemoveMode(Z)V
    .locals 1

    .line 179
    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    .line 180
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setRemoveMode(Z)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAddLanguage:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    return-void
.end method

.method private updateVisibilityOfRemoveMenu()V
    .locals 4

    .line 317
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 321
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 324
    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 323
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 325
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    .line 326
    iget-boolean p0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mIsUiRestricted:Z

    if-nez p0, :cond_3

    move v3, v2

    :cond_3
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x158

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "localeInfo"

    .line 170
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 172
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->addLocale(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 173
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    .line 175
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 87
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/app/LocaleStore;->fillCache(Landroid/content/Context;)V

    .line 90
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getUserLocaleList()Ljava/util/List;

    move-result-object p1

    .line 91
    new-instance v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 271
    sget v0, Lcom/android/settings/R$string;->locale_remove_menu:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 272
    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x4

    .line 273
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 274
    sget v1, Lcom/android/settings/R$drawable;->op_ic_delete:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 275
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 276
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    .line 277
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    .line 97
    sget p3, Lcom/android/settings/R$layout;->locale_order_list:I

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 99
    invoke-direct {p0, p1}, Lcom/android/settings/localepicker/LocaleListEditor;->configureDragAndDrop(Landroid/view/View;)V

    return-object p2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 147
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 157
    invoke-direct {p0, p1}, Lcom/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    return v2

    .line 162
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 149
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-eqz p1, :cond_3

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V

    goto :goto_1

    .line 152
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    :goto_1
    return v2
.end method

.method public onResume()V
    .locals 3

    .line 105
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 107
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mIsUiRestricted:Z

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mIsUiRestricted:Z

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 110
    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mIsUiRestricted:Z

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 112
    sget v0, Lcom/android/settings/R$string;->language_empty_list_user_restricted:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    .line 113
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    goto :goto_0

    .line 115
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mIsUiRestricted:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 117
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 139
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 140
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    const-string v1, "localeRemoveMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    const-string v1, "showingLocaleRemoveDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->saveState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    .line 124
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "localeRemoveMode"

    const/4 v1, 0x0

    .line 126
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    const-string v0, "showingLocaleRemoveDialog"

    .line 127
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    .line 129
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    invoke-direct {p0, v0}, Lcom/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->restoreState(Landroid/os/Bundle;)V

    .line 132
    iget-boolean p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    if-eqz p1, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V

    :cond_1
    return-void
.end method

.method showRemoveLocaleWarningDialog()V
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getCheckedCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 195
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    return-void

    .line 200
    :cond_0
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getItemCount()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 201
    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    .line 202
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->dlg_remove_locales_error_title:I

    .line 203
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->dlg_remove_locales_error_message:I

    .line 204
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x1040013

    new-instance v2, Lcom/android/settings/localepicker/LocaleListEditor$2;

    invoke-direct {v2, p0}, Lcom/android/settings/localepicker/LocaleListEditor$2;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 205
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/settings/localepicker/LocaleListEditor$1;

    invoke-direct {v1, p0}, Lcom/android/settings/localepicker/LocaleListEditor$1;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 210
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 216
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 217
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    .line 221
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$plurals;->dlg_remove_locales_title:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 223
    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    .line 225
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 226
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->isFirstLocaleChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    sget v2, Lcom/android/settings/R$string;->dlg_remove_locales_message:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 230
    :cond_2
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x1040009

    new-instance v2, Lcom/android/settings/localepicker/LocaleListEditor$5;

    invoke-direct {v2, p0}, Lcom/android/settings/localepicker/LocaleListEditor$5;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 231
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->locale_remove_menu:I

    new-instance v2, Lcom/android/settings/localepicker/LocaleListEditor$4;

    invoke-direct {v2, p0}, Lcom/android/settings/localepicker/LocaleListEditor$4;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 237
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/settings/localepicker/LocaleListEditor$3;

    invoke-direct {v0, p0}, Lcom/android/settings/localepicker/LocaleListEditor$3;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 259
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 265
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 266
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
