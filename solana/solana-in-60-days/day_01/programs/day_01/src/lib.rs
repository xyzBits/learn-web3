use anchor_lang::prelude::*;

declare_id!("3q5N372pX4tR32s5SJTKc6RYZq1VVD5mCqcPkDSAJA36");

#[program]
pub mod day_01 {
    use super::*;

    pub fn initialize(ctx: Context<Initialize>) -> Result<()> {
        msg!("Greetings from: {:?}", ctx.program_id);
        Ok(())
    }
}

#[derive(Accounts)]
pub struct Initialize {}
