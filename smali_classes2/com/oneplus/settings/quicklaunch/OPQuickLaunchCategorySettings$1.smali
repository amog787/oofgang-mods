.class Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings$1;
.super Ljava/lang/Object;
.source "OPQuickLaunchCategorySettings.java"

# interfaces
.implements Lcom/oneplus/settings/quicklaunch/TabUtils$OnSetupTabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->initTabLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetupTab(ILcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;

    invoke-static {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;->access$000(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p2, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method
