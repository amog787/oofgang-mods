.class public final synthetic Lcom/android/settings/wifi/tether/utils/-$$Lambda$TetherUtils$utGM3o4y0PBGDd4W70zOcMfdXfc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/utils/-$$Lambda$TetherUtils$utGM3o4y0PBGDd4W70zOcMfdXfc;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/utils/-$$Lambda$TetherUtils$utGM3o4y0PBGDd4W70zOcMfdXfc;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p0, p1, p2}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->lambda$showUstAlertDialog$1(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
