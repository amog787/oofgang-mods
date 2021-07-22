.class public final Lcom/android/settings/inputmethod/VirtualKeyboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "VirtualKeyboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/VirtualKeyboardFragment$WindowFocusChangeListener;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAddVirtualKeyboardScreen:Landroidx/preference/Preference;

.field private mAvailableInputMethod:Landroidx/preference/PreferenceCategory;

.field private mCurrentInputMethod:Landroidx/preference/Preference;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFocusChangeListener:Lcom/android/settings/inputmethod/VirtualKeyboardFragment$WindowFocusChangeListener;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/OPInputMethodPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 150
    new-instance v0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->updateCurrentInput()V

    return-void
.end method

.method private synthetic lambda$onCreatePreferences$0(Landroidx/preference/Preference;)Z
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$updateInputMethodPreferenceViews$1(Ljava/text/Collator;Lcom/android/settingslib/OPInputMethodPreference;Lcom/android/settingslib/OPInputMethodPreference;)I
    .locals 0

    .line 135
    invoke-virtual {p1, p2, p0}, Lcom/android/settingslib/OPInputMethodPreference;->compareTo(Lcom/android/settingslib/OPInputMethodPreference;Ljava/text/Collator;)I

    move-result p0

    return p0
.end method

.method private updateCurrentInput()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mCurrentInputMethod:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/language/LanguageAndInputSettings;->getCurrentInputMethod(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateInputMethodPreferenceViews()V
    .locals 14

    .line 115
    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 116
    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    .line 118
    iget-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    move v10, v9

    goto :goto_0

    .line 119
    :cond_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    move v10, v1

    :goto_0
    move v11, v9

    :goto_1
    if-ge v11, v10, :cond_3

    .line 121
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move v5, v9

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v1, 0x1

    move v5, v1

    .line 124
    :goto_3
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 125
    new-instance v13, Lcom/android/settingslib/OPInputMethodPreference;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v13

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settingslib/OPInputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/android/settingslib/OPInputMethodPreference$OnSavePreferenceListener;)V

    .line 131
    invoke-virtual {v13, v12}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 134
    :cond_3
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/inputmethod/-$$Lambda$VirtualKeyboardFragment$SLLd3dtxj7HqQ80Fz3c43WyC6tQ;

    invoke-direct {v2, v0}, Lcom/android/settings/inputmethod/-$$Lambda$VirtualKeyboardFragment$SLLd3dtxj7HqQ80Fz3c43WyC6tQ;-><init>(Ljava/text/Collator;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAvailableInputMethod:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :goto_4
    if-ge v9, v10, :cond_4

    .line 138
    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/OPInputMethodPreference;

    .line 139
    invoke-virtual {v0, v9}, Landroidx/preference/Preference;->setOrder(I)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAvailableInputMethod:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 141
    invoke-static {v0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtilCompat;->removeUnnecessaryNonPersistentPreference(Landroidx/preference/Preference;)V

    .line 142
    invoke-virtual {v0}, Lcom/android/settingslib/OPInputMethodPreference;->updatePreferenceViews()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 144
    :cond_4
    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroidx/preference/Preference;

    invoke-virtual {v0, v10}, Landroidx/preference/Preference;->setOrder(I)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAvailableInputMethod:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "VirtualKeyboardFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x159

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 100
    sget p0, Lcom/android/settings/R$xml;->virtual_keyboard_settings:I

    return p0
.end method

.method public synthetic lambda$onCreatePreferences$0$VirtualKeyboardFragment(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->lambda$onCreatePreferences$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 73
    const-class p2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 74
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-string p1, "add_virtual_keyboard_screen"

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 75
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    iput-object p1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroidx/preference/Preference;

    const-string p1, "current_input_method"

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 77
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    iput-object p1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mCurrentInputMethod:Landroidx/preference/Preference;

    const-string p1, "available_input_method"

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 79
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAvailableInputMethod:Landroidx/preference/PreferenceCategory;

    .line 83
    iget-object p1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mCurrentInputMethod:Landroidx/preference/Preference;

    new-instance p2, Lcom/android/settings/inputmethod/-$$Lambda$VirtualKeyboardFragment$H8P70pCV5BiAvO91Zn_0JTKg4Ns;

    invoke-direct {p2, p0}, Lcom/android/settings/inputmethod/-$$Lambda$VirtualKeyboardFragment$H8P70pCV5BiAvO91Zn_0JTKg4Ns;-><init>(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 190
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mFocusChangeListener:Lcom/android/settings/inputmethod/VirtualKeyboardFragment$WindowFocusChangeListener;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mFocusChangeListener:Lcom/android/settings/inputmethod/VirtualKeyboardFragment$WindowFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mFocusChangeListener:Lcom/android/settings/inputmethod/VirtualKeyboardFragment$WindowFocusChangeListener;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 92
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 95
    invoke-direct {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->updateInputMethodPreferenceViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 181
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 182
    new-instance p1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$WindowFocusChangeListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$WindowFocusChangeListener;-><init>(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;Lcom/android/settings/inputmethod/VirtualKeyboardFragment$1;)V

    iput-object p1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mFocusChangeListener:Lcom/android/settings/inputmethod/VirtualKeyboardFragment$WindowFocusChangeListener;

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mFocusChangeListener:Lcom/android/settings/inputmethod/VirtualKeyboardFragment$WindowFocusChangeListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    :cond_0
    return-void
.end method
