.class public final synthetic Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$ScaryWarningDialogFragment$GfuRaJIB12V_MS8RLGOsdgpO8G0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/utils/ManagedServiceSettings;

.field public final synthetic f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/utils/ManagedServiceSettings;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$ScaryWarningDialogFragment$GfuRaJIB12V_MS8RLGOsdgpO8G0;->f$0:Lcom/android/settings/utils/ManagedServiceSettings;

    iput-object p2, p0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$ScaryWarningDialogFragment$GfuRaJIB12V_MS8RLGOsdgpO8G0;->f$1:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$ScaryWarningDialogFragment$GfuRaJIB12V_MS8RLGOsdgpO8G0;->f$0:Lcom/android/settings/utils/ManagedServiceSettings;

    iget-object p0, p0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$ScaryWarningDialogFragment$GfuRaJIB12V_MS8RLGOsdgpO8G0;->f$1:Landroid/content/ComponentName;

    invoke-static {v0, p0, p1, p2}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->lambda$onCreateDialog$0(Lcom/android/settings/utils/ManagedServiceSettings;Landroid/content/ComponentName;Landroid/content/DialogInterface;I)V

    return-void
.end method
