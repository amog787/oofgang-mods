.class Lcom/android/settings/print/SettingsPrintServicesLoader$1;
.super Landroid/print/PrintServicesLoader;
.source "SettingsPrintServicesLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/print/SettingsPrintServicesLoader;-><init>(Landroid/print/PrintManager;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/SettingsPrintServicesLoader;


# direct methods
.method constructor <init>(Lcom/android/settings/print/SettingsPrintServicesLoader;Landroid/print/PrintManager;Landroid/content/Context;I)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/settings/print/SettingsPrintServicesLoader$1;->this$0:Lcom/android/settings/print/SettingsPrintServicesLoader;

    invoke-direct {p0, p2, p3, p4}, Landroid/print/PrintServicesLoader;-><init>(Landroid/print/PrintManager;Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/print/SettingsPrintServicesLoader$1;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-super {p0, p1}, Landroid/print/PrintServicesLoader;->deliverResult(Ljava/lang/Object;)V

    .line 48
    iget-object p0, p0, Lcom/android/settings/print/SettingsPrintServicesLoader$1;->this$0:Lcom/android/settings/print/SettingsPrintServicesLoader;

    invoke-virtual {p0, p1}, Landroidx/loader/content/Loader;->deliverResult(Ljava/lang/Object;)V

    return-void
.end method
