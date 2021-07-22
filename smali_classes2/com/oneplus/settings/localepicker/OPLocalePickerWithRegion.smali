.class public Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;
.super Landroid/app/ListFragment;
.source "OPLocalePickerWithRegion.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion$LocaleSelectedListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

.field private mFirstVisiblePosition:I

.field private mListener:Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion$LocaleSelectedListener;

.field private mLocaleList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

.field private mPreviousSearch:Ljava/lang/CharSequence;

.field private mPreviousSearchHadFocus:Z

.field private mSearchView:Landroidx/appcompat/widget/SearchView;

.field private mTopDistance:I

.field private mTranslatedOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mTranslatedOnly:Z

    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mSearchView:Landroidx/appcompat/widget/SearchView;

    .line 60
    iput-object v1, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    .line 61
    iput-boolean v0, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    .line 62
    iput v0, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mFirstVisiblePosition:I

    .line 63
    iput v0, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mTopDistance:I

    return-void
.end method

.method private static createCountryPicker(Landroid/content/Context;Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;
    .locals 1

    .line 81
    new-instance v0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;

    invoke-direct {v0}, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;-><init>()V

    .line 82
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->setListener(Landroid/content/Context;Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static createLanguagePicker(Landroid/content/Context;Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion$LocaleSelectedListener;Z)Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;
    .locals 2

    .line 89
    new-instance v0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;

    invoke-direct {v0}, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;-><init>()V

    const/4 v1, 0x0

    .line 90
    invoke-direct {v0, p0, p1, v1, p2}, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->setListener(Landroid/content/Context;Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Z

    return-object v0
.end method

.method private returnToParentFrame()V
    .locals 2

    .line 142
    invoke-virtual {p0}, Landroid/app/ListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "localeListEditor"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    return-void
.end method

.method private setListener(Landroid/content/Context;Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Z
    .locals 3

    .line 109
    iput-object p3, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 110
    iput-object p2, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mListener:Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion$LocaleSelectedListener;

    .line 111
    iput-boolean p4, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mTranslatedOnly:Z

    const/4 v0, 0x1

    .line 112
    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setRetainInstance(Z)V

    .line 114
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-nez p4, :cond_0

    .line 116
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object p4

    .line 117
    invoke-virtual {p4}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p4

    const-string v2, ","

    invoke-virtual {p4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 118
    invoke-static {v1, p4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    if-eqz p3, :cond_2

    .line 125
    invoke-static {p1, v1, p3, v0}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    .line 127
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-gt p1, v0, :cond_3

    if-eqz p2, :cond_1

    .line 128
    iget-object p1, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 129
    iget-object p0, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-interface {p2, p0}, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion$LocaleSelectedListener;->onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p2, 0x0

    .line 134
    invoke-static {p1, v1, p2, v0}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    :cond_3
    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 148
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 149
    invoke-virtual {p0, p1}, Landroid/app/ListFragment;->setHasOptionsMenu(Z)V

    .line 151
    iget-object v0, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->returnToParentFrame()V

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 160
    iget-object v0, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 161
    :goto_1
    new-instance v1, Lcom/android/internal/app/SuggestedLocaleAdapter;

    iget-object v2, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-direct {v1, v2, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;-><init>(Ljava/util/Set;Z)V

    iput-object v1, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    .line 162
    new-instance v1, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;-><init>(Ljava/util/Locale;Z)V

    .line 164
    iget-object p1, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {p1, v1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->sort(Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;)V

    .line 165
    iget-object p1, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {p0, p1}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-nez v0, :cond_3

    .line 239
    sget v0, Lcom/android/settings/R$menu;->op_language_selection_list:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 241
    sget p2, Lcom/android/settings/R$id;->locale_search_menu:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 243
    sget p2, Lcom/android/settings/R$drawable;->op_ic_menu_search:I

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 244
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SearchView;

    iput-object p2, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mSearchView:Landroidx/appcompat/widget/SearchView;

    if-eqz p2, :cond_2

    const v0, 0x1040738

    .line 247
    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 248
    iget-object p2, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p2, p0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 251
    iget-object p2, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 252
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 253
    iget-object p1, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 254
    iget-object p1, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mSearchView:Landroidx/appcompat/widget/SearchView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setActivated(Z)V

    .line 255
    iget-boolean p1, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    if-eqz p1, :cond_0

    .line 256
    iget-object p1, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mSearchView:Landroidx/appcompat/widget/SearchView;

    iget-object v0, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 260
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mSearchView:Landroidx/appcompat/widget/SearchView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 266
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iget p2, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mFirstVisiblePosition:I

    iget p0, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mTopDistance:I

    invoke-virtual {p1, p2, p0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_3
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 215
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 217
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 218
    iget-object p2, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mListener:Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion$LocaleSelectedListener;

    if-eqz p2, :cond_0

    .line 219
    invoke-interface {p2, p1}, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion$LocaleSelectedListener;->onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->returnToParentFrame()V

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {p0}, Landroid/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mListener:Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion$LocaleSelectedListener;

    iget-boolean p4, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mTranslatedOnly:Z

    .line 223
    invoke-static {p2, p3, p1, p4}, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->createCountryPicker(Landroid/content/Context;Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 226
    invoke-virtual {p0}, Landroid/app/ListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    const/16 p3, 0x1001

    .line 227
    invoke-virtual {p2, p3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object p2

    .line 228
    invoke-virtual {p0}, Landroid/app/ListFragment;->getId()I

    move-result p0

    invoke-virtual {p2, p0, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 229
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 231
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->returnToParentFrame()V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 170
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 176
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 173
    :cond_0
    invoke-virtual {p0}, Landroid/app/ListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->popBackStack()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 4

    .line 194
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 197
    iget-object v0, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mSearchView:Landroidx/appcompat/widget/SearchView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    .line 199
    iget-object v0, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    goto :goto_0

    .line 201
    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    .line 206
    :goto_0
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 207
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 208
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    iput v3, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mFirstVisiblePosition:I

    if-nez v2, :cond_1

    goto :goto_1

    .line 209
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v0

    sub-int/2addr v1, v0

    :goto_1
    iput v1, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mTopDistance:I

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    if-eqz p0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 181
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 183
    iget-object v0, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/localepicker/OPLocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1040432

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 189
    :goto_0
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ListView;->requestFocus()Z

    return-void
.end method
