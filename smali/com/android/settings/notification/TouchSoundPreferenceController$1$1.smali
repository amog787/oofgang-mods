.class Lcom/android/settings/notification/TouchSoundPreferenceController$1$1;
.super Ljava/lang/Object;
.source "TouchSoundPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/TouchSoundPreferenceController$1;->setSetting(Landroid/content/Context;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/android/settings/notification/TouchSoundPreferenceController$1;Landroid/content/Context;I)V
    .locals 0

    .line 41
    iput-object p2, p0, Lcom/android/settings/notification/TouchSoundPreferenceController$1$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/android/settings/notification/TouchSoundPreferenceController$1$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/android/settings/notification/TouchSoundPreferenceController$1$1;->val$context:Landroid/content/Context;

    const-string v1, "audio"

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 46
    iget p0, p0, Lcom/android/settings/notification/TouchSoundPreferenceController$1$1;->val$value:I

    if-eqz p0, :cond_0

    .line 47
    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    :goto_0
    return-void
.end method
