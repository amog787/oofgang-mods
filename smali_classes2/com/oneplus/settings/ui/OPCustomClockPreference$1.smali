.class Lcom/oneplus/settings/ui/OPCustomClockPreference$1;
.super Ljava/lang/Object;
.source "OPCustomClockPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPCustomClockPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$1;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 198
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$1;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$100(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$1;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    .line 199
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$1;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {p0, p1}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$200(Lcom/oneplus/settings/ui/OPCustomClockPreference;Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;)V

    return-void
.end method
