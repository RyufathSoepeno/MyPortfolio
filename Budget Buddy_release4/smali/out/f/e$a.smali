.class Lf/e$a;
.super Lf/c$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field J:[[I


# direct methods
.method constructor <init>(Lf/e$a;Lf/e;Landroid/content/res/Resources;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lf/c$c;-><init>(Lf/c$c;Lf/c;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_a

    iget-object p1, p1, Lf/e$a;->J:[[I

    iput-object p1, p0, Lf/e$a;->J:[[I

    goto :goto_12

    :cond_a
    invoke-virtual {p0}, Lf/c$c;->f()I

    move-result p1

    new-array p1, p1, [[I

    iput-object p1, p0, Lf/e$a;->J:[[I

    :goto_12
    return-void
.end method


# virtual methods
.method A([I)I
    .registers 6

    iget-object v0, p0, Lf/e$a;->J:[[I

    invoke-virtual {p0}, Lf/c$c;->h()I

    move-result v1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    aget-object v3, v0, v2

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_12

    return v2

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    const/4 p1, -0x1

    return p1
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    new-instance v0, Lf/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lf/e;-><init>(Lf/e$a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    new-instance v0, Lf/e;

    invoke-direct {v0, p0, p1}, Lf/e;-><init>(Lf/e$a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public o(II)V
    .registers 5

    invoke-super {p0, p1, p2}, Lf/c$c;->o(II)V

    new-array p2, p2, [[I

    iget-object v0, p0, Lf/e$a;->J:[[I

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p2, p0, Lf/e$a;->J:[[I

    return-void
.end method

.method r()V
    .registers 4

    iget-object v0, p0, Lf/e$a;->J:[[I

    array-length v1, v0

    new-array v1, v1, [[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1d

    iget-object v2, p0, Lf/e$a;->J:[[I

    aget-object v2, v2, v0

    if-eqz v2, :cond_17

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1d
    iput-object v1, p0, Lf/e$a;->J:[[I

    return-void
.end method

.method z([ILandroid/graphics/drawable/Drawable;)I
    .registers 4

    invoke-virtual {p0, p2}, Lf/c$c;->a(Landroid/graphics/drawable/Drawable;)I

    move-result p2

    iget-object v0, p0, Lf/e$a;->J:[[I

    aput-object p1, v0, p2

    return p2
.end method
