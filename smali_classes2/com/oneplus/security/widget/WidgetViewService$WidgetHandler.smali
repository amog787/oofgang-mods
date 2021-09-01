.class Lcom/oneplus/security/widget/WidgetViewService$WidgetHandler;
.super Landroid/os/Handler;
.source "WidgetViewService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/security/widget/WidgetViewService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WidgetHandler"
.end annotation


# instance fields
.field private final mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oneplus/security/widget/WidgetViewService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oneplus/security/widget/WidgetViewService;)V
    .locals 1

    .line 148
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService$WidgetHandler;->mService:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 153
    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetViewService$WidgetHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/security/widget/WidgetViewService;

    if-nez p0, :cond_0

    const-string p0, "WidgetViewService"

    const-string p1, "mService.get() is null."

    .line 155
    invoke-static {p0, p1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 158
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 181
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/security/widget/WidgetViewService;->loadSystemStorage()V

    goto :goto_0

    .line 184
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/security/widget/WidgetViewService;->setWidgetData()V

    .line 185
    invoke-static {}, Lcom/oneplus/security/widget/WidgetViewService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 186
    :try_start_0
    sget-object p1, Lcom/oneplus/security/widget/WidgetViewService;->sWidgetDataItems:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/oneplus/security/widget/WidgetViewService;->updateRemoteViews(Ljava/util/Map;)V

    .line 187
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 162
    :pswitch_2
    invoke-static {}, Lcom/oneplus/security/widget/WidgetViewService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 166
    :try_start_1
    sget-object v1, Lcom/oneplus/security/widget/WidgetViewService;->sWidgetDataItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/security/utils/Utils;->isCollectionEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "WidgetViewService"

    const-string p1, "sWidgetDataItems is empty"

    .line 167
    invoke-static {p0, p1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    monitor-exit v0

    return-void

    .line 170
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/oneplus/security/widget/WidgetData;

    if-eqz v1, :cond_2

    .line 171
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/oneplus/security/widget/WidgetData;

    .line 172
    sget-object v1, Lcom/oneplus/security/widget/WidgetViewService;->sWidgetDataItems:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oneplus/security/widget/WidgetData;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_2
    sget-object p1, Lcom/oneplus/security/widget/WidgetViewService;->sWidgetDataItems:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/oneplus/security/widget/WidgetViewService;->updateRemoteViews(Ljava/util/Map;)V

    .line 175
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 178
    :pswitch_3
    invoke-virtual {p0}, Lcom/oneplus/security/widget/WidgetViewService;->requestDataUsageUpdate()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
