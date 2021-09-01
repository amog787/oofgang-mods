.class Lcom/android/settings/fuelgauge/PowerUsageSummary$6;
.super Ljava/lang/Object;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/PowerUsageSummary;->resetStats()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$6;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 323
    const-string p2, "dumpsys batterystats --reset"

    invoke-static {p2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->ecAgo(Ljava/lang/String;)Ljava/lang/String;

    .line 324
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$6;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshUi(I)V

    return-void
.end method
