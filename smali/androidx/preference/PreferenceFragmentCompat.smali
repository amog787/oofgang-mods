.class public abstract Landroidx/preference/PreferenceFragmentCompat;
.super Landroidx/fragment/app/Fragment;
.source "PreferenceFragmentCompat.java"

# interfaces
.implements Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;
.implements Landroidx/preference/PreferenceManager$OnDisMissPreferenceDialogListener;
.implements Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;
.implements Landroidx/preference/DialogPreference$TargetFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;,
        Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;,
        Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;,
        Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;,
        Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;
    }
.end annotation


# instance fields
.field private final mDividerDecoration:Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;

.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mLayoutResId:I

.field mList:Landroidx/recyclerview/widget/RecyclerView;

.field private mPreferenceManager:Landroidx/preference/PreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field private mSelectPreferenceRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 113
    new-instance v0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;-><init>(Landroidx/preference/PreferenceFragmentCompat;)V

    iput-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mDividerDecoration:Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;

    .line 119
    sget v0, Landroidx/preference/R$layout;->preference_list_fragment:I

    iput v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mLayoutResId:I

    .line 122
    new-instance v0, Landroidx/preference/PreferenceFragmentCompat$1;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragmentCompat$1;-><init>(Landroidx/preference/PreferenceFragmentCompat;)V

    iput-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    .line 133
    new-instance v0, Landroidx/preference/PreferenceFragmentCompat$2;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragmentCompat$2;-><init>(Landroidx/preference/PreferenceFragmentCompat;)V

    iput-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mRequestFocus:Ljava/lang/Runnable;

    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .line 481
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 482
    :cond_0
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private requirePreferenceManager()V
    .locals 1

    .line 475
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz p0, :cond_0

    return-void

    .line 476
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "This should be called after super.onCreate."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 1

    .line 652
    new-instance v0, Landroidx/preference/PreferenceFragmentCompat$3;

    invoke-direct {v0, p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat$3;-><init>(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 683
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    .line 684
    iput-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 686
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private unbindPreferences()V
    .locals 2

    .line 496
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 497
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->onDetached()V

    .line 501
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->onUnbindPreferences()V

    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 3

    .line 365
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;->requirePreferenceManager()V

    .line 367
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 368
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    .line 367
    invoke-virtual {v0, v1, p1, v2}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method bindPreferences()V
    .locals 3

    .line 487
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 490
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->onAttached()V

    .line 492
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->onBindPreferences()V

    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 468
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 471
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method public getCallbackFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 519
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public getPreferenceManager()Landroidx/preference/PreferenceManager;
    .locals 0

    .line 331
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    return-object p0
.end method

.method public getPreferenceScreen()Landroidx/preference/PreferenceScreen;
    .locals 0

    .line 340
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    return-object p0
.end method

.method protected onBindPreferences()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 142
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 143
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroidx/preference/R$attr;->preferenceTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 145
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v0, :cond_0

    .line 148
    sget v0, Landroidx/preference/R$style;->PreferenceThemeOverlay:I

    .line 150
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 152
    new-instance v0, Landroidx/preference/PreferenceManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->setActivity(Landroid/app/Activity;)V

    .line 156
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceManager;->setOnNavigateToScreenListener(Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;)V

    .line 157
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 164
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 573
    new-instance p0, Landroidx/preference/PreferenceGroupAdapter;

    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    return-object p0
.end method

.method public onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 1

    .line 563
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 539
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 541
    sget p3, Landroidx/preference/R$id;->recycler_view:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p3, :cond_0

    return-object p3

    .line 546
    :cond_0
    sget p3, Landroidx/preference/R$layout;->preference_recyclerview:I

    const/4 v0, 0x0

    .line 547
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 549
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 550
    new-instance p0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;

    invoke-direct {p0, p1}, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/preference/R$styleable;->PreferenceFragmentCompat:[I

    sget v2, Landroidx/preference/R$attr;->preferenceFragmentCompatStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 188
    sget v1, Landroidx/preference/R$styleable;->PreferenceFragmentCompat_android_layout:I

    iget v2, p0, Landroidx/preference/PreferenceFragmentCompat;->mLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/preference/PreferenceFragmentCompat;->mLayoutResId:I

    .line 191
    sget v1, Landroidx/preference/R$styleable;->PreferenceFragmentCompat_android_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 193
    sget v2, Landroidx/preference/R$styleable;->PreferenceFragmentCompat_android_dividerHeight:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 195
    sget v5, Landroidx/preference/R$styleable;->PreferenceFragmentCompat_allowDividerAfterLastItem:I

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 198
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 200
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 202
    iget v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mLayoutResId:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x102003f

    .line 204
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 205
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    .line 210
    check-cast v0, Landroid/view/ViewGroup;

    .line 212
    invoke-virtual {p0, p1, v0, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 218
    iput-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 220
    iget-object p3, p0, Landroidx/preference/PreferenceFragmentCompat;->mDividerDecoration:Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 221
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    if-eq v2, v3, :cond_0

    .line 223
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->setDividerHeight(I)V

    .line 225
    :cond_0
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mDividerDecoration:Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;

    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->setAllowDividerAfterLastItem(Z)V

    .line 229
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    .line 230
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 232
    :cond_1
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p2

    .line 215
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not create RecyclerView"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 206
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDestroyView()V
    .locals 2

    .line 304
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 305
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 306
    iget-boolean v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mHavePrefs:Z

    if-eqz v0, :cond_0

    .line 307
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;->unbindPreferences()V

    :cond_0
    const/4 v0, 0x0

    .line 309
    iput-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 310
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 3

    .line 587
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    .line 589
    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 591
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    if-eqz v2, :cond_1

    .line 592
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    .line 593
    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    return-void

    .line 601
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    return-void

    .line 606
    :cond_3
    instance-of v0, p1, Landroidx/preference/EditTextPreference;

    if-eqz v0, :cond_4

    .line 607
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Landroidx/preference/EditTextPreferenceDialogFragmentCompat;

    move-result-object p1

    goto :goto_1

    .line 608
    :cond_4
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_5

    .line 609
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/ListPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Landroidx/preference/ListPreferenceDialogFragmentCompat;

    move-result-object p1

    goto :goto_1

    .line 610
    :cond_5
    instance-of v0, p1, Landroidx/preference/MultiSelectListPreference;

    if-eqz v0, :cond_6

    .line 611
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;

    move-result-object p1

    .line 619
    :goto_1
    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 620
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 613
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot display dialog for an unknown Preference type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Make sure to implement onPreferenceDisplayDialog() to handle "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "displaying a custom dialog for this Preference."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onNavigateToScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 454
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;

    .line 456
    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/PreferenceScreen;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 458
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;

    if-eqz v0, :cond_1

    .line 459
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;

    .line 460
    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/PreferenceScreen;)Z

    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 405
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 407
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    .line 409
    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 411
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    if-eqz v2, :cond_1

    .line 412
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    .line 413
    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "PreferenceFragment"

    const-string v2, "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments."

    .line 416
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 424
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 425
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v3

    .line 426
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p1

    .line 425
    invoke-virtual {v3, v4, p1}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 427
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 428
    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 429
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 433
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 p0, 0x0

    .line 434
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 435
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 315
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 317
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 319
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 320
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->saveHierarchyState(Landroid/os/Bundle;)V

    const-string p0, "android:preferences"

    .line 321
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 288
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 289
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 290
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    .line 291
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceManager;->setOnDisMissPreferenceDialogListener(Landroidx/preference/PreferenceManager$OnDisMissPreferenceDialogListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 296
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 297
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 298
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    .line 299
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceManager;->setOnDisMissPreferenceDialogListener(Landroidx/preference/PreferenceManager$OnDisMissPreferenceDialogListener;)V

    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 263
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const-string p1, "android:preferences"

    .line 266
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 268
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 270
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 275
    :cond_0
    iget-boolean p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mHavePrefs:Z

    if-eqz p1, :cond_1

    .line 276
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->bindPreferences()V

    .line 277
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 278
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 279
    iput-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    :cond_1
    const/4 p1, 0x1

    .line 283
    iput-boolean p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mInitDone:Z

    return-void
.end method

.method public scrollToPreference(Landroidx/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    .line 648
    invoke-direct {p0, p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method public scrollToPreference(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 644
    invoke-direct {p0, v0, p1}, Landroidx/preference/PreferenceFragmentCompat;->scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 247
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mDividerDecoration:Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 0

    .line 258
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mDividerDecoration:Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->setDividerHeight(I)V

    return-void
.end method

.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 349
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceManager;->setPreferences(Landroidx/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 350
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->onUnbindPreferences()V

    const/4 p1, 0x1

    .line 351
    iput-boolean p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mHavePrefs:Z

    .line 352
    iget-boolean p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mInitDone:Z

    if-eqz p1, :cond_0

    .line 353
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;->postBindPreferences()V

    :cond_0
    return-void
.end method
