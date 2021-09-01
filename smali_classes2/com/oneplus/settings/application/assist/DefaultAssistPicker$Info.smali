.class Lcom/oneplus/settings/application/assist/DefaultAssistPicker$Info;
.super Ljava/lang/Object;
.source "DefaultAssistPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/application/assist/DefaultAssistPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Info"
.end annotation


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public final voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;)V
    .locals 0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p1, p0, Lcom/oneplus/settings/application/assist/DefaultAssistPicker$Info;->component:Landroid/content/ComponentName;

    const/4 p1, 0x0

    .line 303
    iput-object p1, p0, Lcom/oneplus/settings/application/assist/DefaultAssistPicker$Info;->voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    return-void
.end method

.method constructor <init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;)V
    .locals 0

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, Lcom/oneplus/settings/application/assist/DefaultAssistPicker$Info;->component:Landroid/content/ComponentName;

    .line 308
    iput-object p2, p0, Lcom/oneplus/settings/application/assist/DefaultAssistPicker$Info;->voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    return-void
.end method


# virtual methods
.method public isVoiceInteractionService()Z
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/oneplus/settings/application/assist/DefaultAssistPicker$Info;->voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
