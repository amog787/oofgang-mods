.class Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;
.super Ljava/lang/Object;
.source "SetupCompatServiceProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;


# direct methods
.method constructor <init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;->this$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    .line 237
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;->this$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    new-instance p1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    sget-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->REBIND_REQUIRED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;)V

    invoke-static {p0, p1}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->access$200(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;)V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 2

    .line 242
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;->this$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    new-instance p1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    sget-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->SERVICE_NOT_USABLE:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;)V

    invoke-static {p0, p1}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->access$200(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 221
    sget-object p1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->CONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    if-nez p2, :cond_0

    .line 223
    sget-object p1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->DISCONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const-string v0, "SucServiceProvider"

    const-string v1, "Binder is null when onServiceConnected was called!"

    .line 224
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;->this$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    .line 227
    invoke-static {p2}, Lcom/google/android/setupcompat/ISetupCompatService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/setupcompat/ISetupCompatService;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;Lcom/google/android/setupcompat/ISetupCompatService;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;)V

    .line 226
    invoke-static {p0, v0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->access$200(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 232
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;->this$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    new-instance p1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    sget-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->DISCONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;)V

    invoke-static {p0, p1}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->access$200(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;)V

    return-void
.end method
