.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BluetoothDevicesSlice$q_JMYwcUb-eAe_EjoQ4B91qhm9U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/slice/builders/ListBuilder;


# direct methods
.method public synthetic constructor <init>(Landroidx/slice/builders/ListBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BluetoothDevicesSlice$q_JMYwcUb-eAe_EjoQ4B91qhm9U;->f$0:Landroidx/slice/builders/ListBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BluetoothDevicesSlice$q_JMYwcUb-eAe_EjoQ4B91qhm9U;->f$0:Landroidx/slice/builders/ListBuilder;

    check-cast p1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-static {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->lambda$getSlice$0(Landroidx/slice/builders/ListBuilder;Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    return-void
.end method
