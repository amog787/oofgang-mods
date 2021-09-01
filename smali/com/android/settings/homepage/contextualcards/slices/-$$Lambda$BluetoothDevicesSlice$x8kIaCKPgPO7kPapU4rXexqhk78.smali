.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BluetoothDevicesSlice$x8kIaCKPgPO7kPapU4rXexqhk78;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BluetoothDevicesSlice$x8kIaCKPgPO7kPapU4rXexqhk78;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BluetoothDevicesSlice$x8kIaCKPgPO7kPapU4rXexqhk78;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BluetoothDevicesSlice$x8kIaCKPgPO7kPapU4rXexqhk78;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BluetoothDevicesSlice$x8kIaCKPgPO7kPapU4rXexqhk78;->INSTANCE:Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BluetoothDevicesSlice$x8kIaCKPgPO7kPapU4rXexqhk78;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->lambda$getPairedBluetoothDevices$1(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    return p0
.end method
