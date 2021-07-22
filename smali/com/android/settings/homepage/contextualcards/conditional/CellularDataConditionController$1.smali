.class Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$1;
.super Lcom/android/settings/network/GlobalSettingsChangeListener;
.source "CellularDataConditionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;


# direct methods
.method constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$1;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;

    invoke-direct {p0, p2, p3}, Lcom/android/settings/network/GlobalSettingsChangeListener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/String;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$1;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->access$000(Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->access$100(Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;Landroid/content/Context;)I

    move-result p1

    .line 61
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$1;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;

    invoke-static {v0}, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->access$200(Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;)I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$1;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;

    invoke-static {v0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->access$202(Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;I)I

    .line 65
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$1;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;

    invoke-static {v0}, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->access$300(Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$1;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;

    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->access$000(Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->access$400(Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;Landroid/content/Context;I)V

    :cond_1
    return-void
.end method
