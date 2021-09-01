.class public Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "UserDictionaryAddWordFragment.java"


# instance fields
.field private mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

.field private mIsDeleting:Z

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    return-void
.end method

.method private updateSpinner()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->getLocalesList(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v0

    .line 123
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const v2, 0x1090008

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const p0, 0x1090009

    .line 125
    invoke-virtual {v1, p0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3e

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 52
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 54
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 84
    sget p0, Lcom/android/settings/R$string;->delete:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0, p2, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    sget p1, Lcom/android/settings/R$drawable;->ic_delete:I

    .line 85
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p0

    const/4 p1, 0x5

    .line 86
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 60
    sget p2, Lcom/android/settings/R$layout;->user_dictionary_add_word_fullscreen:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    .line 64
    iget-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    if-nez p1, :cond_0

    .line 65
    new-instance p1, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    iget-object p2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    goto :goto_0

    .line 72
    :cond_0
    new-instance p1, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    iget-object p2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    iget-object p3, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-direct {p1, p2, p3}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;)V

    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    .line 76
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p3}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->getCurrentUserDictionaryLocale()Ljava/lang/String;

    move-result-object p3

    .line 76
    invoke-static {p2, p3}, Lcom/android/settings/inputmethod/UserDictionarySettingsUtils;->getLocaleDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 79
    iget-object p0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 99
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 100
    iget-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->delete(Landroid/content/Context;)V

    .line 101
    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 130
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onPause()V

    .line 132
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->apply(Landroid/content/Context;Landroid/os/Bundle;)I

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 115
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 117
    invoke-direct {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->updateSpinner()V

    return-void
.end method
