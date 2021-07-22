.class Lcom/oneplus/settings/ui/OPCustomClockPreference$3;
.super Ljava/lang/Object;
.source "OPCustomClockPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPCustomClockPreference;->changeAdaptive(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

.field final synthetic val$current:Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$3;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    iput-object p2, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$3;->val$current:Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$3;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$600(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Lcom/oneplus/settings/ui/OPCustomClockPreference$FirstPreviewHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$3;->val$current:Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->key_pref:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference$FirstPreviewHelper;->previewDone(Ljava/lang/String;)V

    return-void
.end method
