.class public final synthetic Landroidx/core/content/res/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/core/content/res/h$e;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroidx/core/content/res/h$e;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/content/res/l;->e:Landroidx/core/content/res/h$e;

    iput p2, p0, Landroidx/core/content/res/l;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroidx/core/content/res/l;->e:Landroidx/core/content/res/h$e;

    iget v1, p0, Landroidx/core/content/res/l;->f:I

    invoke-static {v0, v1}, Landroidx/core/content/res/h$e;->a(Landroidx/core/content/res/h$e;I)V

    return-void
.end method
