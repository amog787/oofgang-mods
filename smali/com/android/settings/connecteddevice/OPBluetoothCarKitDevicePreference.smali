.class public Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;
.super Lcom/oneplus/settings/ui/OPCarKitButtonPreference;
.source "OPBluetoothCarKitDevicePreference.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;


# static fields
.field private static sDimAlpha:I = -0x80000000


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mContext:Landroid/content/Context;

.field private final mShowDevicesWithoutNames:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-object p1, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    const-string/jumbo v0, "user"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 38
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 39
    iput-boolean p3, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mShowDevicesWithoutNames:Z

    .line 41
    sget p3, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->sDimAlpha:I

    const/high16 v0, -0x80000000

    if-ne p3, v0, :cond_0

    .line 42
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x1010033

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p3, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 45
    invoke-virtual {p3}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float/2addr p1, p3

    float-to-int p1, p1

    sput p1, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->sDimAlpha:I

    .line 48
    :cond_0
    iput-object p2, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 49
    invoke-virtual {p2, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->onDeviceAttributesChanged()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 159
    instance-of v0, p1, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;

    if-nez v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;

    iget-object p1, p1, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->isCarkit(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 125
    sget v0, Lcom/android/settings/R$drawable;->op_ic_settings_car:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(I)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->oneplus_remove:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->setButtonString(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, v1}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->setButtonEnable(Z)V

    .line 128
    new-instance v0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference$1;-><init>(Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;)V

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->oneplus_add:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->setButtonString(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, v1}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->setButtonEnable(Z)V

    .line 142
    new-instance v0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference$2;-><init>(Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;)V

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->setLeftTextTitle(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;

    move-result-object v0

    .line 84
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 85
    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 96
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mShowDevicesWithoutNames:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 97
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasHumanReadableName()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 96
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 100
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    return-void
.end method

.method public setButtonEnable(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mButtonEnable:Z

    return-void
.end method

.method public setButtonString(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mButtonString:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
