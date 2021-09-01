.class public Lcom/android/settings/bluetooth/BluetoothSliceBuilder;
.super Ljava/lang/Object;
.source "BluetoothSliceBuilder.java"


# static fields
.field public static final INTENT_FILTER:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private static getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.bluetooth.action.BLUETOOTH_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/android/settings/slices/SliceBroadcastReceiver;

    .line 137
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    .line 138
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    .line 96
    sget v0, Lcom/android/settings/R$string;->bluetooth_settings_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 99
    const-class v2, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    .line 100
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x2eb

    .line 99
    invoke-static {p0, v2, v3, v0, v4}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 103
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static getPrimaryAction(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    .line 130
    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 131
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getSlice(Landroid/content/Context;)Landroidx/slice/Slice;
    .locals 8

    .line 73
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->isBluetoothEnabled()Z

    move-result v0

    .line 74
    sget v1, Lcom/android/settings/R$string;->bluetooth_settings:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x1080524

    .line 75
    invoke-static {p0, v2}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    .line 77
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 78
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    .line 79
    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 80
    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->getPrimaryAction(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    const/4 v6, 0x0

    .line 81
    invoke-static {v5, v2, v6, v1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v2

    const/4 v5, 0x0

    .line 83
    invoke-static {v4, v5, v0}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    .line 86
    new-instance v4, Landroidx/slice/builders/ListBuilder;

    sget-object v5, Lcom/android/settings/slices/CustomSliceRegistry;->BLUETOOTH_URI:Landroid/net/Uri;

    const-wide/16 v6, -0x1

    invoke-direct {v4, p0, v5, v6, v7}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 87
    invoke-virtual {v4, v3}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    new-instance p0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 89
    invoke-virtual {p0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 90
    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 91
    invoke-virtual {p0, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 88
    invoke-virtual {v4, p0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 92
    invoke-virtual {v4}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public static handleUriChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p0, "android.app.slice.extra.TOGGLE_STATE"

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    .line 112
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p0, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :goto_0
    return-void
.end method

.method private static isBluetoothEnabled()Z
    .locals 1

    .line 125
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method
