.class Landroidx/fragment/app/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroidx/fragment/app/j0;

.field static final b:Landroidx/fragment/app/j0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Landroidx/fragment/app/i0;-><init>()V

    sput-object v0, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/j0;

    invoke-static {}, Landroidx/fragment/app/h0;->b()Landroidx/fragment/app/j0;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/h0;->b:Landroidx/fragment/app/j0;

    return-void
.end method

.method static a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLl/a;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/Fragment;",
            "Z",
            "Ll/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->W()Landroidx/core/app/t;

    goto :goto_9

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->W()Landroidx/core/app/t;

    :goto_9
    return-void
.end method

.method private static b()Landroidx/fragment/app/j0;
    .registers 3

    :try_start_0
    const-string v0, "androidx.transition.FragmentTransitionSupport"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j0;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    const/4 v0, 0x0

    return-object v0
.end method

.method static c(Ll/a;Ll/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ll/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ll/g;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1a

    invoke-virtual {p0, v0}, Ll/g;->l(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ll/g;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {p0, v0}, Ll/g;->j(I)Ljava/lang/Object;

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1a
    return-void
.end method

.method static d(Ljava/util/ArrayList;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_17

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_17
    return-void
.end method
