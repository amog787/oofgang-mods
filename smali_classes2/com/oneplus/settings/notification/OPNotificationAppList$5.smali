.class Lcom/oneplus/settings/notification/OPNotificationAppList$5;
.super Ljava/lang/Object;
.source "OPNotificationAppList.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPNotificationAppList;->refreshDisplayedItems(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

.field final synthetic val$position:I

.field final synthetic val$row:Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPNotificationAppList;Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;I)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    iput-object p2, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->val$row:Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    iput p3, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 309
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 310
    iget-object p2, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->val$row:Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p2, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->ledDisabled:Z

    .line 311
    iget-object p2, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {p2}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$600(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object p2

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->val$row:Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/android/settings/notification/NotificationBackend;->setLedEnabled(Ljava/lang/String;Z)Z

    .line 312
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$400(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object p1

    iget p2, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->val$position:I

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->val$row:Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$800(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$700(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method
