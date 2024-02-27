.class public final Landroidx/window/embedding/SplitInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final primaryActivityStack:Landroidx/window/embedding/ActivityStack;

.field private final secondaryActivityStack:Landroidx/window/embedding/ActivityStack;

.field private final splitRatio:F


# direct methods
.method public constructor <init>(Landroidx/window/embedding/ActivityStack;Landroidx/window/embedding/ActivityStack;F)V
    .registers 5

    const-string v0, "primaryActivityStack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secondaryActivityStack"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/SplitInfo;->primaryActivityStack:Landroidx/window/embedding/ActivityStack;

    iput-object p2, p0, Landroidx/window/embedding/SplitInfo;->secondaryActivityStack:Landroidx/window/embedding/ActivityStack;

    iput p3, p0, Landroidx/window/embedding/SplitInfo;->splitRatio:F

    return-void
.end method


# virtual methods
.method public final contains(Landroid/app/Activity;)Z
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/window/embedding/SplitInfo;->primaryActivityStack:Landroidx/window/embedding/ActivityStack;

    invoke-virtual {v0, p1}, Landroidx/window/embedding/ActivityStack;->contains(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Landroidx/window/embedding/SplitInfo;->secondaryActivityStack:Landroidx/window/embedding/ActivityStack;

    invoke-virtual {v0, p1}, Landroidx/window/embedding/ActivityStack;->contains(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_18

    :cond_16
    const/4 p1, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p1, 0x1

    :goto_19
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroidx/window/embedding/SplitInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Landroidx/window/embedding/SplitInfo;->primaryActivityStack:Landroidx/window/embedding/ActivityStack;

    check-cast p1, Landroidx/window/embedding/SplitInfo;

    iget-object v3, p1, Landroidx/window/embedding/SplitInfo;->primaryActivityStack:Landroidx/window/embedding/ActivityStack;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Landroidx/window/embedding/SplitInfo;->secondaryActivityStack:Landroidx/window/embedding/ActivityStack;

    iget-object v3, p1, Landroidx/window/embedding/SplitInfo;->secondaryActivityStack:Landroidx/window/embedding/ActivityStack;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget v1, p0, Landroidx/window/embedding/SplitInfo;->splitRatio:F

    iget p1, p1, Landroidx/window/embedding/SplitInfo;->splitRatio:F

    cmpg-float p1, v1, p1

    if-nez p1, :cond_2c

    const/4 p1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    :goto_2d
    if-nez p1, :cond_30

    return v2

    :cond_30
    return v0
.end method

.method public final getPrimaryActivityStack()Landroidx/window/embedding/ActivityStack;
    .registers 2

    iget-object v0, p0, Landroidx/window/embedding/SplitInfo;->primaryActivityStack:Landroidx/window/embedding/ActivityStack;

    return-object v0
.end method

.method public final getSecondaryActivityStack()Landroidx/window/embedding/ActivityStack;
    .registers 2

    iget-object v0, p0, Landroidx/window/embedding/SplitInfo;->secondaryActivityStack:Landroidx/window/embedding/ActivityStack;

    return-object v0
.end method

.method public final getSplitRatio()F
    .registers 2

    iget v0, p0, Landroidx/window/embedding/SplitInfo;->splitRatio:F

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Landroidx/window/embedding/SplitInfo;->primaryActivityStack:Landroidx/window/embedding/ActivityStack;

    invoke-virtual {v0}, Landroidx/window/embedding/ActivityStack;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/window/embedding/SplitInfo;->secondaryActivityStack:Landroidx/window/embedding/ActivityStack;

    invoke-virtual {v1}, Landroidx/window/embedding/ActivityStack;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/window/embedding/SplitInfo;->splitRatio:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SplitInfo:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "primaryActivityStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/window/embedding/SplitInfo;->getPrimaryActivityStack()Landroidx/window/embedding/ActivityStack;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secondaryActivityStack="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/window/embedding/SplitInfo;->getSecondaryActivityStack()Landroidx/window/embedding/ActivityStack;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "splitRatio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/window/embedding/SplitInfo;->getSplitRatio()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
