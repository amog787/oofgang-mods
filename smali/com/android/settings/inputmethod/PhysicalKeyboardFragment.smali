.class public final Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PhysicalKeyboardFragment.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mIntentWaitingForResult:Landroid/content/Intent;

.field private mKeyboardAssistanceCategory:Landroidx/preference/PreferenceCategory;

.field private final mLastHardKeyboards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShowVirtualKeyboardSwitch:Landroidx/preference/SwitchPreference;

.field private final mShowVirtualKeyboardSwitchPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 336
    new-instance v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$2;

    invoke-direct {v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    .line 212
    new-instance v0, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$6fUHntX7YGj-R6TGihvJQH-dyB4;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$6fUHntX7YGj-R6TGihvJQH-dyB4;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 219
    new-instance v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;

    new-instance v1, Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Z)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitch()V

    return-void
.end method

.method static getHardKeyboards(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    if-nez v1, :cond_0

    .line 269
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 271
    :cond_0
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget v5, v2, v4

    .line 272
    invoke-static {v5}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 273
    invoke-virtual {v5}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 276
    :cond_1
    new-instance v6, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    .line 277
    invoke-virtual {v5}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v8

    invoke-static {v5, p0, v1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getLayoutLabel(Landroid/view/InputDevice;Landroid/content/Context;Landroid/hardware/input/InputManager;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v8, v5}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;-><init>(Ljava/lang/String;Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 276
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 281
    :cond_3
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p0

    .line 282
    new-instance v1, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$0L_sveVrLCaH7SCEDvZiTKfWFKI;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$0L_sveVrLCaH7SCEDvZiTKfWFKI;-><init>(Ljava/text/Collator;)V

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static getLayoutLabel(Landroid/view/InputDevice;Landroid/content/Context;Landroid/hardware/input/InputManager;)Ljava/lang/String;
    .locals 0

    .line 251
    invoke-virtual {p0}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 253
    sget p0, Lcom/android/settings/R$string;->keyboard_layout_default_label:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 255
    :cond_0
    invoke-virtual {p2, p0}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object p0

    if-nez p0, :cond_1

    .line 257
    sget p0, Lcom/android/settings/R$string;->keyboard_layout_default_label:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 261
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getHardKeyboards$4(Ljava/text/Collator;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;)I
    .locals 2

    .line 283
    iget-object v0, p1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 287
    :cond_0
    iget-object v0, p1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v0}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 288
    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 292
    :cond_1
    iget-object p1, p1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mLayoutLabel:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mLayoutLabel:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$3(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 215
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "show_ime_with_hard_keyboard"

    .line 214
    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$scheduleUpdateHardKeyboards$0(Ljava/util/List;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateHardKeyboards(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$scheduleUpdateHardKeyboards$1(Landroid/content/Context;)V
    .locals 1

    .line 142
    invoke-static {p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getHardKeyboards(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 143
    new-instance v0, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$TSW09XXjPDm85D9gNcQRBrAyYps;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$TSW09XXjPDm85D9gNcQRBrAyYps;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Ljava/util/List;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updateHardKeyboards$2(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;Landroidx/preference/Preference;)Z
    .locals 0

    .line 171
    iget-object p1, p1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    const/4 p0, 0x1

    return p0
.end method

.method private registerShowVirtualKeyboardSettingsObserver()V
    .locals 5

    .line 190
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->unregisterShowVirtualKeyboardSettingsObserver()V

    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_ime_with_hard_keyboard"

    .line 192
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 195
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x0

    .line 191
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 196
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitch()V

    return-void
.end method

.method private scheduleUpdateHardKeyboards()V
    .locals 2

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 141
    new-instance v1, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$j2wn_SRBsrC7ziAxKgN6he5fFRk;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$j2wn_SRBsrC7ziAxKgN6he5fFRk;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 1

    .line 183
    new-instance v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct {v0, p1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;-><init>(Landroid/hardware/input/InputDeviceIdentifier;)V

    const/4 p1, 0x0

    .line 185
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 186
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "keyboardLayout"

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private toggleKeyboardShortcutsMenu()V
    .locals 0

    .line 209
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->requestShowKeyboardShortcuts()V

    return-void
.end method

.method private unregisterShowVirtualKeyboardSettingsObserver()V
    .locals 1

    .line 200
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateHardKeyboards(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 156
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 158
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 160
    new-instance v1, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 161
    sget v2, Lcom/android/settings/R$string;->builtin_keyboard_settings_title:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v2, 0x0

    .line 162
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 163
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 165
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    .line 167
    new-instance v3, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 168
    iget-object v4, v2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v4, v2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mLayoutLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 170
    new-instance v4, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$1KYr-rxevh_pYMYyHWsEHR2hE8M;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$1KYr-rxevh_pYMYyHWsEHR2hE8M;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;)V

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 174
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 177
    :cond_1
    iget-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 178
    iget-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 179
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitch()V

    return-void
.end method

.method private updateShowVirtualKeyboardSwitch()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroidx/preference/SwitchPreference;

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "show_ime_with_hard_keyboard"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    .line 204
    :cond_0
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x15a

    return p0
.end method

.method public synthetic lambda$new$3$PhysicalKeyboardFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->lambda$new$3(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$scheduleUpdateHardKeyboards$0$PhysicalKeyboardFragment(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->lambda$scheduleUpdateHardKeyboards$0(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$scheduleUpdateHardKeyboards$1$PhysicalKeyboardFragment(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->lambda$scheduleUpdateHardKeyboards$1(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$updateHardKeyboards$2$PhysicalKeyboardFragment(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->lambda$updateHardKeyboards$2(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 238
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 240
    iget-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mIntentWaitingForResult:Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string p2, "input_device_identifier"

    .line 242
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputDeviceIdentifier;

    const/4 p2, 0x0

    .line 243
    iput-object p2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 244
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    :cond_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 80
    sget p2, Lcom/android/settings/R$xml;->physical_keyboard_settings:I

    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 81
    const-class p2, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    const-string p1, "keyboard_assistance_category"

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 82
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroidx/preference/PreferenceCategory;

    const-string p2, "show_virtual_keyboard_switch"

    .line 85
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    .line 84
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->scheduleUpdateHardKeyboards()V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->scheduleUpdateHardKeyboards()V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->scheduleUpdateHardKeyboards()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 112
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 113
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 116
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->unregisterShowVirtualKeyboardSettingsObserver()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 91
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "keyboard_shortcuts_helper"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->writePreferenceClickMetric(Landroidx/preference/Preference;)V

    .line 93
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->toggleKeyboardShortcutsMenu()V

    const/4 p0, 0x1

    return p0

    .line 96
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 101
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 102
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 103
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->scheduleUpdateHardKeyboards()V

    .line 104
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->registerShowVirtualKeyboardSettingsObserver()V

    return-void
.end method

.method public onSetupKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 3

    .line 228
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings$KeyboardLayoutPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "input_device_identifier"

    .line 230
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 232
    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mIntentWaitingForResult:Landroid/content/Intent;

    const/4 p1, 0x0

    .line 233
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
