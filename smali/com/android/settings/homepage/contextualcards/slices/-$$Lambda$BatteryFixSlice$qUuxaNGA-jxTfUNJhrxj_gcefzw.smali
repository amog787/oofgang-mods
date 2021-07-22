.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BatteryFixSlice$qUuxaNGA-jxTfUNJhrxj_gcefzw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BatteryFixSlice$qUuxaNGA-jxTfUNJhrxj_gcefzw;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BatteryFixSlice$qUuxaNGA-jxTfUNJhrxj_gcefzw;->f$0:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->lambda$updateBatteryTipAvailabilityCache$0(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
