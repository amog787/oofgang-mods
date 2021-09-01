.class public final synthetic Lcom/oneplus/settings/ui/-$$Lambda$OPCustomShapePreference$ChooseStyleAdapter$z7P9eI1Y5QKVeB4mcsuHrEuqtF8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/oneplus/settings/ui/OPCustomItemEntity;

.field public final synthetic f$3:Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;ILcom/oneplus/settings/ui/OPCustomItemEntity;Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomShapePreference$ChooseStyleAdapter$z7P9eI1Y5QKVeB4mcsuHrEuqtF8;->f$0:Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;

    iput p2, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomShapePreference$ChooseStyleAdapter$z7P9eI1Y5QKVeB4mcsuHrEuqtF8;->f$1:I

    iput-object p3, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomShapePreference$ChooseStyleAdapter$z7P9eI1Y5QKVeB4mcsuHrEuqtF8;->f$2:Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iput-object p4, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomShapePreference$ChooseStyleAdapter$z7P9eI1Y5QKVeB4mcsuHrEuqtF8;->f$3:Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomShapePreference$ChooseStyleAdapter$z7P9eI1Y5QKVeB4mcsuHrEuqtF8;->f$0:Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;

    iget v1, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomShapePreference$ChooseStyleAdapter$z7P9eI1Y5QKVeB4mcsuHrEuqtF8;->f$1:I

    iget-object v2, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomShapePreference$ChooseStyleAdapter$z7P9eI1Y5QKVeB4mcsuHrEuqtF8;->f$2:Lcom/oneplus/settings/ui/OPCustomItemEntity;

    iget-object p0, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomShapePreference$ChooseStyleAdapter$z7P9eI1Y5QKVeB4mcsuHrEuqtF8;->f$3:Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->lambda$onBindViewHolder$0$OPCustomShapePreference$ChooseStyleAdapter(ILcom/oneplus/settings/ui/OPCustomItemEntity;Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;Landroid/view/View;)V

    return-void
.end method
