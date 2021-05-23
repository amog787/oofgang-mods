.class Lcom/android/server/wifi/OpSlaNetlinkHelper$oif;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/OpSlaNetlinkHelper;->W1(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/wifi/OpSlaNetlinkHelper;

.field final synthetic zta:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/widget/Toast;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$oif;->you:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    iput-object p2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$oif;->zta:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$oif;->zta:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
