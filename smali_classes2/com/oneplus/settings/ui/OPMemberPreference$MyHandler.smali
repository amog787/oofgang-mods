.class Lcom/oneplus/settings/ui/OPMemberPreference$MyHandler;
.super Landroid/os/Handler;
.source "OPMemberPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPMemberPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private final mPreference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oneplus/settings/ui/OPMemberPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/ui/OPMemberPreference;)V
    .locals 1

    .line 224
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 225
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPMemberPreference$MyHandler;->mPreference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/ui/OPMemberPreference;Lcom/oneplus/settings/ui/OPMemberPreference$1;)V
    .locals 0

    .line 220
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPMemberPreference$MyHandler;-><init>(Lcom/oneplus/settings/ui/OPMemberPreference;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 230
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 231
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPMemberPreference$MyHandler;->mPreference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/ui/OPMemberPreference;

    if-eqz p0, :cond_0

    .line 232
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 233
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/oneplus/settings/ui/OPMemberPreference;->access$300(Lcom/oneplus/settings/ui/OPMemberPreference;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
