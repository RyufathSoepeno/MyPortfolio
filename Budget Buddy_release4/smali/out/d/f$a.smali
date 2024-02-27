.class Ld/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Ld/f;


# direct methods
.method constructor <init>(Ld/f;)V
    .registers 2

    iput-object p1, p0, Ld/f$a;->e:Ld/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Ld/f$a;->e:Ld/f;

    iget v1, v0, Ld/f;->Y:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    invoke-virtual {v0, v2}, Ld/f;->U(I)V

    :cond_c
    iget-object v0, p0, Ld/f$a;->e:Ld/f;

    iget v1, v0, Ld/f;->Y:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_19

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Ld/f;->U(I)V

    :cond_19
    iget-object v0, p0, Ld/f$a;->e:Ld/f;

    iput-boolean v2, v0, Ld/f;->X:Z

    iput v2, v0, Ld/f;->Y:I

    return-void
.end method
